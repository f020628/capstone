using System.Collections;
using UnityEngine;

[System.Serializable]
public class EnemyGroup
{
    public GameObject enemyPrefab; // 敌人预制体
    public int count; // 组中敌人的数量
    public Transform spawnPoint; // 出生点
    public Transform[] waypoints; // 敌人的路径点
}

[System.Serializable]
public class EnemyWave
{
    public EnemyGroup[] groups; // 波次中的敌人组
    public float timeBetweenGroups = 2f; // 每组敌人间的间隔时间
}

public class EnemySpawner : MonoBehaviour
{
    public EnemyWave[] waves; // 所有波次
    public float timeBetweenWaves = 5f; // 每波敌人之间的间隔时间

    private void Start()
    {
        StartCoroutine(SpawnWaves()); // 开始生成敌人波
    }

    IEnumerator SpawnWaves()
    {
        foreach (EnemyWave wave in waves)
        {
            foreach (EnemyGroup group in wave.groups)
            {
                yield return StartCoroutine(SpawnGroup(group)); // 等待当前组生成完成
                yield return new WaitForSeconds(wave.timeBetweenGroups); // 组间等待时间
            }
            yield return new WaitForSeconds(timeBetweenWaves); // 波次间等待时间
        }
    }

    IEnumerator SpawnGroup(EnemyGroup group)
    {
        for (int i = 0; i < group.count; i++)
        {
            GameObject enemy = Instantiate(group.enemyPrefab, group.spawnPoint.position, group.spawnPoint.rotation);
            EnemyRoute enemyRoute = enemy.GetComponent<EnemyRoute>();
            if (enemyRoute != null)
            {
                enemyRoute.SetWaypoints(group.waypoints); // 设置敌人的路径点
            }
            Debug.Log("Spawned " + i);
            yield return new WaitForSeconds(0.5f); // 组内每个敌人生成的间隔
        }
    }
}
