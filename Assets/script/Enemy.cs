using System.Collections;
using System.Collections.Generic;
using UnityEngine;
  

public class Enemy : MonoBehaviour
{
 public float health = 100f;
    public float damage = 10f;
    public float attackRate = 1f;
    public float attackCooldown = 2f;
    public float slowDownFactor = 0.5f;
    public float slowDownDuration = 2f;
    private UnityEngine.AI.NavMeshAgent agent;
    private float originalSpeed;
    private bool isSlowed = false;
    private float slowDownTimer = 0f;

    void Start()
    {
        agent = GetComponent<UnityEngine.AI.NavMeshAgent>();
        originalSpeed = agent.speed;
    }
    void Update()
    {
        // 更新攻击冷却时间
        if (attackCooldown > 0)
        {
            attackCooldown -= Time.deltaTime;
        }
        if (isSlowed)
        {
            slowDownTimer -= Time.deltaTime;
            if (slowDownTimer <= 0f)
            {
                ResetSpeed();
            }
        }
    }

    // 敌人的攻击行为
    public void Attack(GameObject target)
    {
        if (attackCooldown <= 0)
        {
            // 重置攻击冷却时间
            attackCooldown = 1f / attackRate;
        }
    }

    // 敌人受到伤害
    public void TakeDamage(float amount)
    {
        health -= amount;
        if (health <= 0)
        {
            Die();
        }
    }

    // 敌人死亡
    private void Die()
    {
        // 敌人死亡时的行为，例如播放动画、销毁对象等
        Destroy(gameObject);
    }

    public void SlowDown(float factor, float duration)
    {
        if (!isSlowed || slowDownTimer < duration)
        {
            isSlowed = true;
            agent.speed *= factor; // Slow down the NavMeshAgent's speed
            slowDownTimer = duration; // Reset the slow down timer
        }
    }

    private void ResetSpeed()
    {
        isSlowed = false;
        agent.speed = originalSpeed;
        slowDownTimer = 0f; // Reset the timer
    }


}

