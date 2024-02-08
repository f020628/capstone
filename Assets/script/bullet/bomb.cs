using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class bomb : MonoBehaviour
{
    public float damage = 50f;

    public float explosionRadius = 1.5f;
    public GameObject explosionPrefab;
     void OnDrawGizmosSelected()
    {
        // Draw a red sphere at the transform's position to visualize the explosion range
        Gizmos.color = Color.red;
        Gizmos.DrawWireSphere(transform.position, explosionRadius);
    }
     void OnCollisionEnter(Collision collision)
    {
        Collider[] colliders = Physics.OverlapSphere(transform.position, explosionRadius);
        //show the radius of the explosion
        Debug.Log("1Explosion radius: " + explosionRadius);
        foreach (Collider hit in colliders)
        {
            Enemy hitEnemy = hit.GetComponent<Enemy>();
            if (hitEnemy != null)
            {
                hitEnemy.TakeDamage(damage);
                Debug.Log("hit");
            }
        }
        // Instantiate the explosion prefab fixit in the location of the bomb
        Instantiate(explosionPrefab, transform.position, Quaternion.identity);
        

        // Destroy the bomb after the explosion
        Destroy(gameObject);
    }
    
}
