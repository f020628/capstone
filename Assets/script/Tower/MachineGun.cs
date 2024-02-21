using UnityEngine;
using System.Collections.Generic;

public class MachineGun : MonoBehaviour
{
    public GameObject bulletPrefab; // Assign your bullet prefab in the inspector
    public Transform shootPoint; // Assign the point from which bullets will be shot
    public float shootingRate = 0.1f; // Time between shots, higher rate of fire for machine gun
    public float bulletSpeed = 50f; // Speed of the bullet
    public float inaccuracy = 5f; // Inaccuracy factor

    private float shootCooldown;
    private List<GameObject> enemiesInRange;

    // Start is called before the first frame update
    void Start()
    {
        enemiesInRange = new List<GameObject>();
        shootCooldown = 0f;

        // Get the Range object's Collider and ensure it's set to trigger
        Collider rangeCollider = transform.Find("Range").GetComponent<Collider>();
        if (rangeCollider == null)
        {
            Debug.LogError("Range collider not found on the child object!");
        }
        else
        {
            rangeCollider.isTrigger = true;
        }
    }

    // Update is called once per frame
    void Update()
    {
        shootCooldown -= Time.deltaTime;
        enemiesInRange.RemoveAll(item => item == null); // Clean up the list from any null references
        if (shootCooldown <= 0f && enemiesInRange.Count > 0)
        {
            Shoot(enemiesInRange[0]); // Continuously shoot at the first enemy in range
            shootCooldown = shootingRate;
        }
    }

    public void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Enemy"))
        {
            enemiesInRange.Add(other.gameObject);
        }
    }

    public void OnTriggerExit(Collider other)
    {
        if (other.gameObject.CompareTag("Enemy"))
        {
            enemiesInRange.Remove(other.gameObject);
        }
    }

    void Shoot(GameObject target)
    {
        if (target != null)
        {
            GameObject bullet = Instantiate(bulletPrefab, shootPoint.position, Quaternion.identity);

            // Calculate direction with inaccuracy
            Vector3 direction = (target.transform.position - shootPoint.position).normalized;
            direction = Quaternion.Euler(
                Random.Range(-inaccuracy, inaccuracy), // Pitch
                Random.Range(-inaccuracy, inaccuracy), // Yaw
                Random.Range(-inaccuracy, inaccuracy)  // Roll, usually not needed for bullets
            ) * direction;

            // Shoot the bullet
            Rigidbody rb = bullet.GetComponent<Rigidbody>();
            rb.velocity = direction * bulletSpeed;
        }
    }
}
