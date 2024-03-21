using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class pulse_generator : MonoBehaviour
{

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
            Slow(enemiesInRange); // Shoot the first enemy in range
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

    void Slow(List<GameObject> enemiesInRange)
    {
        foreach (GameObject enemy in enemiesInRange)
        {
            if (enemy != null)
            {
                Enemy target = enemy.GetComponent<Enemy>();
                target.SlowDown(0.8f,1.5f);
            }
        }
        
    }
}