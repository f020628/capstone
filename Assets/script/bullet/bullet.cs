using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Bullet : MonoBehaviour
{
    private float lifespan = 5f; // Time in seconds before the arrow is automatically destroyed

     void Start()
    {
        // Destroy the arrow after a set amount of time
        Destroy(gameObject, lifespan);
        
        
    }
    void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Enemy"))
        {
            Destroy(gameObject);
            // 处理子弹击中敌人的逻辑，例如减少敌人的生命值
            // 注意不要在这里应用物理力
        }
        Debug.Log("Arrow hit something");
        // 销毁子弹或进行其他处理
    }
}

