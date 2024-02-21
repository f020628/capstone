using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager : MonoBehaviour
{
    public static GameManager Instance; // 单例模式

    public int currentWave; // 当前怪物波次
    public int gold; // 当前金币数量
    public int goldGrowthPerSecond; // 每秒金币自然增长数
    public int levelLife = 20; // 关卡剩余生命值，上限20

    private void Awake()
    {
        if (Instance == null)
        {
            Instance = this;
            DontDestroyOnLoad(gameObject); // 确保GameManager在加载新场景时不被销毁
        }
        else
        {
            Destroy(gameObject);
        }

        // 开始金币自然增长的协程
        StartCoroutine(GoldGrowthRoutine());
    }

    private void Update()
    {

    }

    // 增加怪物波次
    public void IncreaseWave()
    {
        currentWave++;
        Debug.Log("Current Wave: " + currentWave);
    }

    // 增加金币
    public void AddGold(int amount)
    {
        gold += amount;
        Debug.Log("Gold: " + gold);
    }

    // 消费金币
    public bool SpendGold(int amount)
    {
        if (gold >= amount)
        {
            gold -= amount;
            Debug.Log("Gold: " + gold);
            return true;
        }
        else
        {
            Debug.Log("Not enough gold.");
            return false;
        }
    }

    // 减少关卡生命值
    public void DecreaseLife(int amount)
    {
        levelLife -= amount;
        if (levelLife < 0) levelLife = 0;
        Debug.Log("Level Life: " + levelLife);

        if (levelLife <= 0)
        {
            // 游戏结束逻辑
            Debug.Log("Game Over!");
        }
    }

    // 金币自然增长协程
    IEnumerator GoldGrowthRoutine()
    {
        while (true)
        {
            yield return new WaitForSeconds(1);
            AddGold(goldGrowthPerSecond);
        }
    }
}
