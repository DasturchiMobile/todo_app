mixin Mapper<M,E> {
  E toEntity(M model);
  M toModel(E entity);
}