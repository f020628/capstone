using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class ArrowTower : MonoBehaviour
{
    public GameObject arrowPrefab; // Assign your arrow prefab in the inspector
    public Transform shootPoint; // Assign the point from which arrows will be shot
    public float shootingRate = 1f; // Time between shots

    private float shootCooldown;
    private List<GameObject> enemiesInRange;
    public bool active = false;

    // Start is called before the first frame update
    void Start()
    {
        enemiesInRange = new List<GameObject>();
        shootCooldown = 0f;

        // Get the Range object's Collider and add trigger event listeners
        Collider rangeCollider = transform.Find("Range").GetComponent<Collider>();
        if (rangeCollider == null)
        {
            Debug.LogError("Range collider not found on the child object!");
        }
        else
        {
            rangeCollider.isTrigger = true; // Ensure the collider is set to trigger
        }
    }

    // Update is called once per frame
    void Update()
    {
        shootCooldown -= Time.deltaTime;
        enemiesInRange.RemoveAll(item => item == null); // Clean up the list from any null references
        if (shootCooldown <= 0f && enemiesInRange.Count > 0)
        {
            Shoot(enemiesInRange[0]); // Shoot the first enemy in range
            shootCooldown = shootingRate;
        }
    }

    // OnTriggerEnter is now moved to a separate component
    public void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Enemy")) // Make sure your enemies have the tag "Enemy"
        {
            enemiesInRange.Add(other.gameObject);
            Debug.Log(enemiesInRange.Count + " enemies in range");
        }
       
    }

    // OnTriggerExit is also moved to a separate component
    public void OnTriggerExit(Collider other)
    {
        if (other.gameObject.CompareTag("Enemy"))
        {
            enemiesInRange.Remove(other.gameObject);
        }
        Debug.Log(enemiesInRange.Count + " enemies in range");
    }

    void Shoot(GameObject target)
    {
        if (target != null)
        {
            GameObject arrow = Instantiate(arrowPrefab, shootPoint.position, Quaternion.identity);
            arrow.transform.LookAt(target.transform.position); // Makes the arrow face the target
            Rigidbody rb = arrow.GetComponent<Rigidbody>();
            rb.velocity = (target.transform.position - shootPoint.position).normalized * 200f; // Adjust speed as needed
        }
    }
}