
import { JSDOM } from 'jsdom'

export function htmlTableToJson<T>(tableHtmlString: string, sampleObject: T): T[] {

    const dom = new JSDOM(tableHtmlString)
    const table = dom.window.document.querySelector('table')
    const headers = Array.from(table.querySelectorAll('th')).map(header => header.textContent.toLowerCase().trim())
    const keys = Object.keys(sampleObject)
    if(headers.length !== keys.length) throw 'Mismatch in array sizes'
    const arraysMatch = headers.every((value, index) => value === keys[index])
    if(!arraysMatch) throw 'Mismatch in array values'
    const valueRows = Array.from(table.querySelectorAll('tbody tr'));
    
    const jsonData = valueRows.map(row => {
        const record = {}
        Array.from(row.querySelectorAll('td')).forEach((cell, index) => {
            record[headers[index]] = cell.textContent.trim();
        });
        return record as T
    })

    return jsonData
}