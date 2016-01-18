package ar.com.WareTech.DrTech.backend;

import ar.com.WareTech.DrTech.middleware.entities.Enums;
import ar.com.WareTech.DrTech.middleware.entities.Illness;

public class SetUp 
{
	static public void main(String[] args)
		throws Exception
	{
		Database.getCurrentSession().beginTransaction();

		String[] illnessesType1 = new String[]{
				// TIPO #1
				"CARDIOVASCULARES: CARDIOPATIAS CONGENITAS, SOPLOS CARDÌACOS, HIPERTENSION ARTERIAL",
				"CONVULSIONES  O ALGUN ANTECEDENTE NEUROLOGICO",
				"RESPIRATORIOS: TOS CRONICA, ASMA OTRAS ENF. RESPIRATORIAS",
				"TRAUMATISMO DE CRANEO",
				"DIABETES, HIPO O HIPERTIROIDISMO",
				"ALTA, O NO FUNCIONAMIENTO DE ALGUN ORGANO PAR, RIÑON, OJOS, TESTICULOS, AUDICION",
				"PRESENTA ALGUN PROBLEMA EN LA PIEL",
				"CIRUGIAS PREVIAS",
				"SINDROME DE MALA ABSORCION O ENFERMEDAD CELIACA",
				"INTERNACIONES PREVIAS",
				"FRACTURAS, LUXACIONES O LESIONES LIGAMENTARIAS OTRO PROBLEMA EN HUESOS O ARTICULACIONES PROBLEMAS MUSCULARES",
				"VACUNACION COMPLETA",
				"CUADRO INFECCIOSO EN LOS ULTIMOS DOS MESES",
				"TUVO VARICELA, SARAMPION, PAPERAS O HEPATITIS"
				};
		for (String illnessValue : illnessesType1) 
		{
			Illness illness = new Illness();
			illness.setType(Enums.ILLNESS_SICK);
			illness.setValue(illnessValue);
			Database.getCurrentSession().save(illness);
		}
		
		String[] illnessesType2 = new String[]{
				// TIPO #2
				"Muerte súbita en familiar menor a 50 años",
				"Problemas cardiacos",
				"HTA",
				"Obesidad",
				"Diabetes",
				"Colesterol Elevado",
				"Tos Crónica"
				};
		for (String illnessValue : illnessesType2) 
		{
			Illness illness = new Illness();
			illness.setType(Enums.ILLNESS_HERITAGE);
			illness.setValue(illnessValue);
			Database.getCurrentSession().save(illness);
		}
		
		String[] illnessesType3 = new String[]{
				// TIPO #3
				"DOLOR DE PECHO",
				"PALPITACIONES",
				"PERDIDA DE CONOCIMIENTO",
				"MAREOS",
				"DIFICULTAD PARA RESPIRAR",
				"MAYOR  CANSANCIO QUE SUS COMPAÑEROS",
				"DOLOR DE CABEZA FRECUENTE",
				"COLOR AZULADO DE LABIOS O DEDOS",
				"DOLOR MUSCULAR EN LAS PIERNAS",
				"EDEMAS EN TOBILLOS",
				"DOLORES ARTICULARES / COLUMNA"
				};
		for (String illnessValue : illnessesType3) 
		{
			Illness illness = new Illness();
			illness.setType(Enums.ILLNESS_OTHERS);
			illness.setValue(illnessValue);
			Database.getCurrentSession().save(illness);
		}
		
		Database.getCurrentSession().getTransaction().commit();
	}
}
