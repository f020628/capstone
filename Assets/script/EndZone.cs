using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EndZone : MonoBehaviour
{
    private void OnTriggerEnter(Collider other)
    {
        Enemy enemy = other.GetComponent<Enemy>();
        if (enemy != null) // 确保只有带有Enemy脚本的对象才会触发生命值减少
        {
            GameManager.Instance.DecreaseLife(enemy.lifeDamage); // 使用敌人的lifeDamage值来减少生命值
            Destroy(other.gameObject); // 可选：摧毁进入End Zone的敌人
        }
    }
}
