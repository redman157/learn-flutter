

abstract class MapperList<E, F>{
  List<F> toEntityList(List<E> fromEntities);
  List<E> fromEntityList(List<F> toEntities);
}

abstract class MapperModel<E, F> {
  F toEntity(E fromEntity);
  E fromEntity(F toEntity);
}