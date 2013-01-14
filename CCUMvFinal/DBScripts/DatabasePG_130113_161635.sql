-- Group [Group]
create table "public"."group" (
   "oid"  int4  not null,
   "groupname"  varchar(255),
  primary key ("oid")
);


-- Module [Module]
create table "public"."module" (
   "oid"  int4  not null,
   "moduleid"  varchar(255),
   "modulename"  varchar(255),
  primary key ("oid")
);


-- User [User]
create table "public"."user" (
   "oid"  int4  not null,
   "username"  varchar(255),
   "password"  varchar(255),
   "email"  varchar(255),
  primary key ("oid")
);


-- Material Did‡ctico [ent1]
create table "public"."material_didactico" (
   "oid"  int4  not null,
   "nome"  varchar(255),
   "descricao"  varchar(255),
   "nr_paginas"  int4,
   "custo"  float8,
  primary key ("oid")
);


-- Lista de Material Did‡ctico [ent2]
create table "public"."lista_de_material_didactico" (
   "dataactualizacao"  timestamp,
   "oid"  int4  not null,
  primary key ("oid")
);


-- Ano lectivo [ent3]
create table "public"."ano_lectivo" (
   "anolectivo"  varchar(255)  not null,
  primary key ("anolectivo")
);


-- Disciplina [ent5]
create table "public"."disciplina" (
   "nome"  varchar(255)  not null,
  primary key ("nome")
);


-- Pedido de Impress‹o [ent6]
create table "public"."pedido_de_impressao" (
   "oid"  int4  not null,
   "cor"  bool,
   "nr_copias"  int4,
   "pag_por_folha"  int4,
   "frente_verso"  bool,
   "concluido"  bool,
   "adicionado"  timestamp,
  primary key ("oid")
);


-- Estudante [ent8]
create table "public"."estudante" (
   "user_oid"  int4  not null,
   "contacto"  int4,
  primary key ("user_oid")
);


-- CursoAno [ent9]
create table "public"."cursoano" (
   "ano"  int4,
   "sigla"  varchar(255),
   "oid"  int4  not null,
  primary key ("oid")
);


-- Group_DefaultModule [Group2DefaultModule_DefaultModule2Group]
alter table "public"."group"  add column  "module_oid"  int4;
alter table "public"."group"   add constraint fk_group_module foreign key ("module_oid") references "public"."module" ("oid");


-- Group_Module [Group2Module_Module2Group]
create table "public"."group_module" (
   "group_oid"  int4 not null,
   "module_oid"  int4 not null,
  primary key ("group_oid", "module_oid")
);
alter table "public"."group_module"   add constraint fk_group_module_group foreign key ("group_oid") references "public"."group" ("oid");
alter table "public"."group_module"   add constraint fk_group_module_module foreign key ("module_oid") references "public"."module" ("oid");


-- User_DefaultGroup [User2DefaultGroup_DefaultGroup2User]
alter table "public"."user"  add column  "group_oid"  int4;
alter table "public"."user"   add constraint fk_user_group foreign key ("group_oid") references "public"."group" ("oid");


-- User_Group [User2Group_Group2User]
create table "public"."user_group" (
   "user_oid"  int4 not null,
   "group_oid"  int4 not null,
  primary key ("user_oid", "group_oid")
);
alter table "public"."user_group"   add constraint fk_user_group_user foreign key ("user_oid") references "public"."user" ("oid");
alter table "public"."user_group"   add constraint fk_user_group_group foreign key ("group_oid") references "public"."group" ("oid");


-- Material Did‡ctico_Lista de Material Did‡ctico [rel1]
alter table "public"."lista_de_material_didactico"  add column  "material_didactico_oid"  int4;
alter table "public"."lista_de_material_didactico"   add constraint fk_lista_de_material_didactico foreign key ("material_didactico_oid") references "public"."material_didactico" ("oid");


-- Estudante_Curso [rel11]
alter table "public"."cursoano"  add column  "estudante_oid"  int4;
alter table "public"."cursoano"   add constraint fk_cursoano_estudante foreign key ("estudante_oid") references "public"."estudante" ("user_oid");


-- Lista de Material Did‡ctico_Curso [rel2]
alter table "public"."cursoano"  add column  "lista_de_material_didactico_oi"  int4;
alter table "public"."cursoano"   add constraint fk_cursoano_lista_de_material foreign key ("lista_de_material_didactico_oi") references "public"."lista_de_material_didactico" ("oid");


-- Disciplina_Material Did‡ctico [rel3]
alter table "public"."disciplina"  add column  "material_didactico_oid"  int4;
alter table "public"."disciplina"   add constraint fk_disciplina_material_didacti foreign key ("material_didactico_oid") references "public"."material_didactico" ("oid");


-- Ano lectivo_Lista de Material Did‡ctico [rel4]
alter table "public"."ano_lectivo"  add column  "lista_de_material_didactico_oi"  int4;
alter table "public"."ano_lectivo"   add constraint fk_ano_lectivo_lista_de_materi foreign key ("lista_de_material_didactico_oi") references "public"."lista_de_material_didactico" ("oid");


-- Material Did‡ctico_Curso [rel5]
alter table "public"."cursoano"  add column  "material_didactico_oid"  int4;
alter table "public"."cursoano"   add constraint fk_cursoano_material_didactico foreign key ("material_didactico_oid") references "public"."material_didactico" ("oid");


-- Pedido de Impress‹o_Material Did‡ctico [rel6]
alter table "public"."material_didactico"  add column  "pedido_de_impressao_oid"  int4;
alter table "public"."material_didactico"   add constraint fk_material_didactico_pedido_d foreign key ("pedido_de_impressao_oid") references "public"."pedido_de_impressao" ("oid");


-- Estudante_Pedido de Impress‹o [rel7]
alter table "public"."estudante"  add column  "pedido_de_impressao_oid"  int4;
alter table "public"."estudante"   add constraint fk_estudante_pedido_de_impress foreign key ("pedido_de_impressao_oid") references "public"."pedido_de_impressao" ("oid");


-- GEN FK: Estudante --> User
alter table "public"."estudante"   add constraint fk_estudante_user foreign key ("user_oid") references "public"."user" ("oid");


