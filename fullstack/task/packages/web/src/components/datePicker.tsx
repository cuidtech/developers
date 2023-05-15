import { forwardRef, Ref } from 'react';
import DatePicker from 'react-datepicker';

type ButtonProps = {
    value?: string;
    onClick?: () => void;
};
const DatePickerButton = forwardRef(
    ({ value, onClick }: ButtonProps, ref: Ref<HTMLButtonElement>) => (
        <button
            className="bg-blue-600 rounded text-white px-2 py-1 w-full"
            onClick={onClick}
            ref={ref}
            type="button"
        >
            {value}
        </button>
    )
);
function DatePickerComponent({ date, setDate }: { date: Date; setDate: (val: Date) => void }) {
    return (
        <DatePicker
            dateFormat="dd.MM.yyyy"
            maxDate={new Date()}
            showIcon
            selected={date}
            // eslint-disable-next-line  @typescript-eslint/no-non-null-assertion
            onChange={(date) => setDate(date!)}
            customInput={<DatePickerButton />}
        />
    );
}

DatePickerButton.defaultProps = {
    value: undefined,
    onClick: undefined,
};

export default DatePickerComponent;
