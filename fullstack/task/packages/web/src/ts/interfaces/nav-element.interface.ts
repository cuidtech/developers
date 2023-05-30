export interface INavElement {
    key: string;
    icon: () => JSX.Element;
    label: string;
    link: string;
}
