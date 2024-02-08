using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class explosion : MonoBehaviour
{
    public float explosionDamage = 30f;
    public float explosionRadius = 5f;
    private void Start()
    {
        Debug.Log("created");   
        Destroy(gameObject, 2f); // Destroy the explosion object after 0.3 seconds
    }
     void OnDrawGizmosSelected()
    {
        // Draw a red sphere at the transform's position to visualize the explosion range
        Gizmos.color = Color.red;
        Gizmos.DrawWireSphere(transform.position, explosionRadius);
    }


    private void OnTriggerEnter(Collider other)
    {
        Enemy enemy = other.GetComponent<Enemy>();
        if (enemy != null)
        {
            enemy.TakeDamage(explosionDamage);
        }
    }
}



