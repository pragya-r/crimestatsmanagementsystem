source(output(
		AboriginalityId as string,
		Aboriginal as string,
		NonAboriginal as string
	),
	allowSchemaDrift: true,
	validateSchema: false,
	ignoreNoFilesFound: false) ~> ab
source(output(
		AgeId as string,
		Under18 as string,
		YoungAdult as string,
		Adult as string,
		OlderAdult as string
	),
	allowSchemaDrift: true,
	validateSchema: false,
	ignoreNoFilesFound: false) ~> age
source(output(
		BenefitsId as string,
		HealthCareCard as string,
		JobSeekerPayment as string,
		LowIncomeCard as string,
		YouthAllowance as string
	),
	allowSchemaDrift: true,
	validateSchema: false,
	ignoreNoFilesFound: false) ~> benefits
source(output(
		EIncomeId as string,
		MedianIncome as string
	),
	allowSchemaDrift: true,
	validateSchema: false,
	ignoreNoFilesFound: false) ~> eincome
source(output(
		UnemploymentId as string,
		AvgRate as string
	),
	allowSchemaDrift: true,
	validateSchema: false,
	ignoreNoFilesFound: false) ~> emp
source(output(
		Column_1 as string,
		Column_2 as string,
		Column_3 as string
	),
	allowSchemaDrift: true,
	validateSchema: false,
	ignoreNoFilesFound: false) ~> gender
source(output(
		IncomeId as string,
		BenefitsId as string,
		EIncomeId as string
	),
	allowSchemaDrift: true,
	validateSchema: false,
	ignoreNoFilesFound: false) ~> income
source(output(
		IndexId as string,
		SEDis as string,
		SEDisAdv as string,
		EcoResources as string,
		EduOccupation as string
	),
	allowSchemaDrift: true,
	validateSchema: false,
	ignoreNoFilesFound: false) ~> indexes
source(output(
		Prop_0 as string,
		LgaId as string,
		LgaName as string,
		OffenceId as string,
		IncomeId as string,
		IndexId as string,
		PopulationId as string,
		UnemploymentId as string
	),
	allowSchemaDrift: true,
	validateSchema: false,
	ignoreNoFilesFound: false) ~> lga
source(output(
		MonthId as string,
		January as string,
		February as string,
		March as string,
		April as string,
		May as string,
		June as string,
		July as string,
		August as string,
		September as string,
		October as string,
		November as string,
		December as string
	),
	allowSchemaDrift: true,
	validateSchema: false,
	ignoreNoFilesFound: false) ~> month
source(output(
		OffenceId as string,
		IncidentNo as string,
		MonthId as string,
		TimeId as string,
		OffenderId as string,
		AboriginalityId as string
	),
	allowSchemaDrift: true,
	validateSchema: false,
	ignoreNoFilesFound: false) ~> offence
source(output(
		OffenderId as string,
		GenderId as string,
		AgeId as string
	),
	allowSchemaDrift: true,
	validateSchema: false,
	ignoreNoFilesFound: false) ~> offender
source(output(
		PopulationId as string,
		EstimatePop as string,
		IndigenousPop as string
	),
	allowSchemaDrift: true,
	validateSchema: false,
	ignoreNoFilesFound: false) ~> pop
source(output(
		TimeId as string,
		Morning as string,
		Afternoon as string,
		Evening as string,
		Night as string
	),
	allowSchemaDrift: true,
	validateSchema: false,
	ignoreNoFilesFound: false) ~> time
ab sink(allowSchemaDrift: true,
	validateSchema: false,
	input(
		AboriginalityId as integer,
		Aboriginal as integer,
		NonAboriginal as integer
	),
	deletable:false,
	insertable:true,
	updateable:false,
	upsertable:false,
	format: 'table',
	skipDuplicateMapInputs: true,
	skipDuplicateMapOutputs: true,
	errorHandlingOption: 'stopOnFirstError') ~> AboriginalityT
age sink(allowSchemaDrift: true,
	validateSchema: false,
	input(
		AgeId as integer,
		Under18 as integer,
		YoungAdult as integer,
		Adult as integer,
		OlderAdult as integer
	),
	deletable:false,
	insertable:true,
	updateable:false,
	upsertable:false,
	format: 'table',
	skipDuplicateMapInputs: true,
	skipDuplicateMapOutputs: true,
	errorHandlingOption: 'stopOnFirstError') ~> AgeRangeT
benefits sink(allowSchemaDrift: true,
	validateSchema: false,
	input(
		BenefitsId as integer,
		HealthCareCard as integer,
		JobSeekerPayment as integer,
		LowIncomeCard as integer,
		YouthAllowance as integer
	),
	deletable:false,
	insertable:true,
	updateable:false,
	upsertable:false,
	format: 'table',
	skipDuplicateMapInputs: true,
	skipDuplicateMapOutputs: true,
	errorHandlingOption: 'stopOnFirstError') ~> BenefitsT
eincome sink(allowSchemaDrift: true,
	validateSchema: false,
	input(
		EIncomeId as integer,
		MedianIncome as integer
	),
	deletable:false,
	insertable:true,
	updateable:false,
	upsertable:false,
	format: 'table',
	skipDuplicateMapInputs: true,
	skipDuplicateMapOutputs: true,
	errorHandlingOption: 'stopOnFirstError') ~> EIncomeT
emp sink(allowSchemaDrift: true,
	validateSchema: false,
	input(
		UnemploymentId as integer,
		AvgRate as decimal(4,2)
	),
	deletable:false,
	insertable:true,
	updateable:false,
	upsertable:false,
	format: 'table',
	skipDuplicateMapInputs: true,
	skipDuplicateMapOutputs: true,
	errorHandlingOption: 'stopOnFirstError') ~> UnemploymentT
gender sink(allowSchemaDrift: true,
	validateSchema: false,
	input(
		GenderId as integer,
		Male as integer,
		Female as integer
	),
	deletable:false,
	insertable:true,
	updateable:false,
	upsertable:false,
	format: 'table',
	skipDuplicateMapInputs: true,
	skipDuplicateMapOutputs: true,
	errorHandlingOption: 'stopOnFirstError') ~> GenderT
income sink(allowSchemaDrift: true,
	validateSchema: false,
	input(
		IncomeId as integer,
		EIncomeId as integer,
		BenefitsId as integer
	),
	deletable:false,
	insertable:true,
	updateable:false,
	upsertable:false,
	format: 'table',
	skipDuplicateMapInputs: true,
	skipDuplicateMapOutputs: true,
	errorHandlingOption: 'stopOnFirstError') ~> IncomeT
indexes sink(allowSchemaDrift: true,
	validateSchema: false,
	input(
		IndexId as integer,
		SEDis as integer,
		SEDisAdv as integer,
		EcoResources as integer,
		EduOccupation as integer
	),
	deletable:false,
	insertable:true,
	updateable:false,
	upsertable:false,
	format: 'table',
	skipDuplicateMapInputs: true,
	skipDuplicateMapOutputs: true,
	errorHandlingOption: 'stopOnFirstError') ~> IndexesT
lga sink(allowSchemaDrift: true,
	validateSchema: false,
	input(
		LgaId as integer,
		LgaName as string,
		OffenceId as integer,
		IncomeId as integer,
		IndexId as integer,
		PopulationId as integer,
		UnemploymentId as integer
	),
	deletable:false,
	insertable:true,
	updateable:false,
	upsertable:false,
	format: 'table',
	skipDuplicateMapInputs: true,
	skipDuplicateMapOutputs: true,
	errorHandlingOption: 'stopOnFirstError') ~> LgaT
month sink(allowSchemaDrift: true,
	validateSchema: false,
	input(
		MonthId as integer,
		January as integer,
		February as integer,
		March as integer,
		April as integer,
		May as integer,
		June as integer,
		July as integer,
		August as integer,
		September as integer,
		October as integer,
		November as integer,
		December as integer
	),
	deletable:false,
	insertable:true,
	updateable:false,
	upsertable:false,
	format: 'table',
	skipDuplicateMapInputs: true,
	skipDuplicateMapOutputs: true,
	errorHandlingOption: 'stopOnFirstError') ~> MonthT
offence sink(allowSchemaDrift: true,
	validateSchema: false,
	input(
		OffenceId as integer,
		IncidentNo as integer,
		MonthId as integer,
		TimeId as integer,
		AboriginalityId as integer
	),
	deletable:false,
	insertable:true,
	updateable:false,
	upsertable:false,
	format: 'table',
	skipDuplicateMapInputs: true,
	skipDuplicateMapOutputs: true,
	errorHandlingOption: 'stopOnFirstError') ~> OffenceT
offender sink(allowSchemaDrift: true,
	validateSchema: false,
	input(
		OffenderId as integer,
		GenderId as integer,
		AgeId as integer
	),
	deletable:false,
	insertable:true,
	updateable:false,
	upsertable:false,
	format: 'table',
	skipDuplicateMapInputs: true,
	skipDuplicateMapOutputs: true,
	errorHandlingOption: 'stopOnFirstError') ~> OffenderT
pop sink(allowSchemaDrift: true,
	validateSchema: false,
	input(
		PopulationId as integer,
		EstimatePop as integer,
		IndigenousPop as integer
	),
	deletable:false,
	insertable:true,
	updateable:false,
	upsertable:false,
	format: 'table',
	skipDuplicateMapInputs: true,
	skipDuplicateMapOutputs: true,
	errorHandlingOption: 'stopOnFirstError') ~> PopulationT
time sink(allowSchemaDrift: true,
	validateSchema: false,
	input(
		TimeId as integer,
		Morning as integer,
		Afternoon as integer,
		Evening as integer,
		Night as integer
	),
	deletable:false,
	insertable:true,
	updateable:false,
	upsertable:false,
	format: 'table',
	skipDuplicateMapInputs: true,
	skipDuplicateMapOutputs: true,
	errorHandlingOption: 'stopOnFirstError') ~> TimeT