using System.Collections;
using UnityEngine;

public class Arrow : MonoBehaviour
{
    private float lifespan = 5f; // Time in seconds before the arrow is automatically destroyed

    void Start()
    {
        // Destroy the arrow after a set amount of time
        Destroy(gameObject, lifespan);
        
        
    }

    void OnCollisionEnter(Collision collision)
    {
        // Destroy the arrow immediately upon collision
        if (collision.gameObject.CompareTag("Enemy"))
        {
            Destroy(gameObject);
        }
        Debug.Log("Arrow hit something");
    }

    // Update method is not needed if it's empty
}
