using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class gravity_zone : MonoBehaviour
{

    public float pullStrength = 10f; // The strength of the gravity pull
    public float slowDownFactor = 0.5f; // How much the enemy speed is reduced
    public float duration = 2f; // How long the enemy is slowed down
    private void Start()
    {
        Debug.Log("created");   
        Destroy(gameObject, 3f); // Destroy the explosion object after 3 seconds
    }

    void OnTriggerStay(Collider other)
    {
        if (other.CompareTag("Enemy"))
        {
            Enemy enemy = other.GetComponent<Enemy>();
            if (enemy != null)
            {
                // Apply a pull force towards the center of the gravity zone
                Vector3 forceDirection = (transform.position - other.transform.position).normalized;
                enemy.GetComponent<Rigidbody>().AddForce(forceDirection * pullStrength, ForceMode.Acceleration);

                // Slow down the enemy
                enemy.SlowDown(slowDownFactor, duration);
            }
        }
    }
}




