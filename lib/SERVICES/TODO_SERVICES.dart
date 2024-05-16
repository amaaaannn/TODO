
List todo01List = [
];

delete(int a) {
  todo01List.removeAt(a);
}

amn(Map a) {
  todo01List.add(a);
}
updatetodo(Map updatetodo,int index){
  todo01List[index]=updatetodo;

}