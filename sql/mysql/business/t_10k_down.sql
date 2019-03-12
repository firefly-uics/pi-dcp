drop table if exists t_10k_down;
CREATE TABLE t_10k_down (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  run_company varchar(100) NOT NULL,
  down_rate bigint(20) NOT NULL,
  down_time int NOT NULL,
  PRIMARY KEY (id)
);

insert into t_10k_down values (1, '国网赣州供电公司', 2.5916,46);
insert into t_10k_down values (2, '国网南昌供电公司', 5.2149, 56);
insert into t_10k_down values (3, '国网九江供电公司', 5.0814, 60);
insert into t_10k_down values (4, '国网赣西供电公司', 6.526, 62);
insert into t_10k_down values (5, '国网宜春供电公司', 4.6456, 26);
