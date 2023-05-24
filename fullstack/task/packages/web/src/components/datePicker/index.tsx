import DatePicker from 'react-datepicker';
import { CustomDatePickerProps } from './index.types';

function CustomDatePicker({ selectedDate, onDateChange }: CustomDatePickerProps) {
    return (
        <DatePicker
            selected={selectedDate}
            onChange={(date) => onDateChange(date)}
            dateFormat="yyyy/MM/dd"
            className="date-picker"
        />
    );
}

export default CustomDatePicker;
