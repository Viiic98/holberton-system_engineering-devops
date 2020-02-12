#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>
#include <stdlib.h>
/**
 * infinite_while - infinite loop
 * Return: nothing
 **/
int infinite_while(void)
{
	while (1)
	{
		sleep(1);
	}
	return (0);
}
/**
 * main - Create zombies
 * Return: Nothing
 **/
int main(void)
{
	int i = 0;
	pid_t pid;

	while (i < 5)
	{
		pid = fork();
		if (pid == 0)
			exit(0);
		sleep(0.5);
		printf("Zombie process created, PID: %d\n", pid);
		i++;
	}
	infinite_while();
	return (0);
}
