program MedFort
	
	integer :: i, X, QtdFaltas, QtdAulas
	real :: NP1, Ma1, Mb1, NP2, Ma2, Mb2, MedA1, MedA2, MedF
				
	i = 0		
	
	PRINT *, '====================================================='	
	
	DO WHILE (i < 1)
		PRINT *, 'Insira a nota da P1'
		READ *, NP1
		
		IF (NP1 < 0.0 .OR. NP1 > 10.0) THEN
			PRINT *, 'O valor inserido nao e valido, por favor insira uma valor maior que 0.0 e menor que 10.0'
			stop
		END IF
		
		PRINT *, 'Insira a nota da Ma1'
		READ *, Ma1
		
		IF (Ma1 < 0.0 .OR. Ma1 > 10.0) THEN
			PRINT *, 'O valor inserido nao e valido, por favor insira uma valor maior que 0.0 e menor que 10.0'
			stop
		END IF
		
		PRINT *, 'Insira a nota da Mb1'
		READ *, Mb1
		
		IF (Mb1 < 0.0 .OR. Mb1 > 10.0) THEN
			PRINT *, 'O valor inserido nao e valido, por favor insira uma valor maior que 0.0 e menor que 10.0'
			stop
		END IF
		
		PRINT *, 'Insira a nota da P2'
		READ *, NP2
		
		IF (NP2 < 0.0 .OR. NP2 > 10.0) THEN
			PRINT *, 'O valor inserido nao e valido, por favor insira uma valor maior que 0.0 e menor que 10.0'
			stop
		END IF
		
		PRINT *, 'Insira a nota da Ma2'
		READ *, Ma2
		
		IF (Ma2 < 0.0 .OR. Ma2 > 10.0) THEN
			PRINT *, 'O valor inserido nao e valido, por favor insira uma valor maior que 0.0 e menor que 10.0'
			stop
		END IF
		
		PRINT *, 'Insira a nota da Mb2'
		READ *, Mb2
		
		IF (Mb2 < 0.0 .OR. Mb2 > 10.0) THEN
			PRINT *, 'O valor inserido nao e valido, por favor insira uma valor maior que 0.0 e menor que 10.0'
			stop
		END IF
		
		i = i + 1		
	END DO
	
	MedA1 = NP1 * 0.7 + Ma1 * 0.2 + Mb1 * 0.1
	MedA2 = NP2 * 0.7 + Ma2 * 0.2 + Mb2 * 0.1
	
	MedF = (MedA1 + 2 * MedA2) / 3
	
	PRINT *, '-----------------------------------------------------'	
	
	PRINT *, 'Entre com a quantidade de aulas da disciplina'
	READ *, QtdAulas
	
	PRINT *, 'Entre com a quantidade de faltas do aluno'
	READ *, QtdFaltas
	
	PRINT *, '-----------------------------------------------------'		
		
			 IF (MedF >= 5.0 .AND. QtdFaltas <= QtdAulas * 0.75) THEN
					PRINT *, "O aluno foi APROVADO!"
						
				ELSE IF (MedF < 5.0 .AND. MedF >= 3.0 .AND. QtdFaltas <= QtdAulas * 0.75) THEN
						PRINT *, "O aluno foi para a RECUPERACAO!"
								
					ELSE IF (MedF < 3.0 .AND. QtdFaltas <= QtdAulas * 0.75) THEN
							PRINT *, "O aluno foi REPROVADO POR NOTA!"
							
						ELSE IF (QtdFaltas > QtdAulas * 0.75) THEN
								PRINT *, "O aluno foi REPROVADO PRO FALTAS!"
								
			END IF
		
		
		
	PRINT *, '====================================================='
		
END PROGRAM MedFort
				
		
				