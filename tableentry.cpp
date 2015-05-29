#include "tableentry.h"

TableEntry::TableEntry( QString simulationName,
            QString jobStatus,
            QString dateStarted,
            QString dateCompleted,
            QString executionTime,
            QString resultData
            )
            :
            simulationName(simulationName),
            jobStatus(jobStatus),
            dateStarted(dateStarted),
            dateCompleted(dateCompleted),
            executionTime(executionTime),
            resultData(resultData)
{

}
