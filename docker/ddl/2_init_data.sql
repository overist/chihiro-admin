use develop;

insert into _global(`key`,`value`,memo,created_at,updated_at,deleted_at) values 
    ('imageDomain','http://localhost:5001','이미지 도메인',now(),null,null);

insert into _global(`key`,`value`,memo,created_at,updated_at,deleted_at) values 
    ('role','{"U": "사용자", "A": "관리자", "SA": "시스템관리자"}','권한 (JSON)',now(),null,null);    

insert into _global(`key`,`value`,memo,created_at,updated_at,deleted_at) values 
    ('appLogo','http://localhost:5001/9415e64f-5328-4706-909f-abc34fba1427.png','앱 로고',now(),null,null);

insert into _global(`key`,`value`,memo,created_at,updated_at,deleted_at) values 
    ('appName','치히로 관리자','앱 이름',now(),null,null);

insert into _global(`key`,`value`,memo,created_at,updated_at,deleted_at) values 
    ('appDesc','프로그래밍 하기 싫어요','앱 설명',now(),null,null);

insert into `_file` (`abs_path`, `created_at`, `enc_name`, `extension`, `h_size`, `note`, `raw_name`, `size`, `table_name`, `table_pk`, `type`) 
    values ('', now(), '9415e64f-5328-4706-909f-abc34fba1427.png', 'png', '17KB', 'logo', 'logo.png', 17454, NULL, NULL, NULL);

-- 초기 페이지
insert into `_page` (`action_list`, `add_form`, `create_api`, `created_at`, `delete_api`, `deleted_at`, `detail_api`, `detail_form`, `id`, `list_api`, `search_form`, `sub_title`, `table_setting`, `title`, `updated_at`, `url`, `use_create_api`, `use_delete_api`, `use_detail_api`, `use_list_api`) values ('[]', '[]', NULL, '2023-03-08 13:59:26', NULL, NULL, 'getLoginHistory', '[{\"order\":0,\"type\":\"text\",\"label\":\"아이디\",\"key\":\"id\",\"value\":\"\"},{\"order\":1,\"type\":\"text\",\"label\":\"사용자 아이디\",\"key\":\"userId\",\"value\":\"\"},{\"order\":2,\"type\":\"text\",\"label\":\"타입\",\"key\":\"type\",\"value\":\"\"},{\"order\":3,\"type\":\"text\",\"label\":\"생성일자\",\"key\":\"createdAt\",\"value\":\"\"},{\"order\":4,\"type\":\"text\",\"label\":\"수정일자\",\"key\":\"updatedAt\",\"value\":\"\"},{\"order\":5,\"type\":\"text\",\"label\":\"삭제일자\",\"key\":\"deletedAt\",\"value\":\"\"}]', 1, 'getLoginHistoryList', '[{\"order\":0,\"type\":\"text\",\"label\":\"계정\",\"key\":\"account\",\"value\":\"\"},{\"order\":1,\"type\":\"select\",\"label\":\"타입\",\"key\":\"type\",\"value\":\"\",\"list\":[{\"label\":\"로그인\",\"value\":1},{\"label\":\"로그아웃\",\"value\":0}]},{\"order\":2,\"type\":\"date\",\"label\":\"생성일자\",\"key\":\"createdAt\",\"value\":\"\"}]', '로그인 이력을 확인할 수 있습니다.', '[]', '로그인 이력', NULL, 'userHistory', 0, 0, 1, 1);
insert into `_page` (`action_list`, `add_form`, `create_api`, `created_at`, `delete_api`, `deleted_at`, `detail_api`, `detail_form`, `id`, `list_api`, `search_form`, `sub_title`, `table_setting`, `title`, `updated_at`, `url`, `use_create_api`, `use_delete_api`, `use_detail_api`, `use_list_api`) values ('[{\"order\":0,\"icon\":\"bx:user-circle\",\"label\":\"프로필 변경\",\"content\":[{\"type\":\"upload\",\"label\":\"변경할 이미지\",\"key\":\"profile\",\"value\":[],\"allowFileExt\":[\".png\",\".jpg\",\".jpeg\",\".gif\"],\"maxFileCount\":1,\"maxFileSizeBytes\":4194304}],\"loadAPI\":\"getUser\",\"updateAPI\":\"updateUserProfile\"},{\"order\":1,\"icon\":\"bx:user-circle\",\"label\":\"자기소개 변경\",\"content\":[{\"type\":\"editor\",\"label\":\"변경할 자기소개\",\"key\":\"intro\",\"value\":\"\"}],\"loadAPI\":\"getUser\",\"updateAPI\":\"updateUserIntro\"},{\"order\":2,\"icon\":\"bx:pencil\",\"label\":\"비밀번호 변경\",\"content\":[{\"type\":\"password\",\"label\":\"기존 비밀번호\",\"key\":\"oldPassword\",\"value\":\"\"},{\"type\":\"password\",\"label\":\"새로운 비밀번호\",\"key\":\"newPassword\",\"value\":\"\"},{\"type\":\"password\",\"label\":\"새로운 비밀번호 확인\",\"key\":\"confirmNewPassword\",\"value\":\"\"}],\"loadAPI\":null,\"updateAPI\":\"updateUserPassword\"},{\"order\":3,\"icon\":\"bx:pencil\",\"label\":\"사용자명 변경\",\"content\":[{\"type\":\"text\",\"label\":\"사용자명\",\"key\":\"username\",\"value\":\"\"}],\"loadAPI\":\"getUser\",\"updateAPI\":\"updateUserUsername\"},{\"order\":4,\"icon\":\"bx:pencil\",\"label\":\"권한 변경\",\"content\":[{\"type\":\"select\",\"label\":\"권한\",\"key\":\"role\",\"value\":\"\",\"list\":[{\"label\":\"시스템 관리자\",\"value\":\"SA\"},{\"label\":\"관리자\",\"value\":\"A\"},{\"label\":\"사용자\",\"value\":\"U\"}]}],\"loadAPI\":\"getUser\",\"updateAPI\":\"updateUserRole\"}]', '[{\"order\":0,\"type\":\"text\",\"label\":\"계정\",\"key\":\"account\",\"value\":\"\"},{\"order\":1,\"type\":\"password\",\"label\":\"비밀번호\",\"key\":\"password\",\"value\":\"\"},{\"order\":2,\"type\":\"password\",\"label\":\"비밀번호 확인\",\"key\":\"confirmPassword\",\"value\":\"\"},{\"order\":3,\"type\":\"text\",\"label\":\"사용자명\",\"key\":\"username\",\"value\":\"\"},{\"order\":4,\"type\":\"upload\",\"label\":\"이미지\",\"key\":\"profile\",\"value\":[],\"allowFileExt\":[\".png\",\".jpg\",\".jpeg\",\".gif\"],\"maxFileCount\":1,\"maxFileSizeBytes\":4194304},{\"order\":5,\"type\":\"editor\",\"label\":\"에디터\",\"key\":\"intro\",\"value\":\"\"},{\"order\":6,\"type\":\"select\",\"label\":\"권한\",\"key\":\"role\",\"value\":\"\",\"list\":[{\"label\":\"시스템 관리자\",\"value\":\"SA\"},{\"label\":\"관리자\",\"value\":\"A\"},{\"label\":\"사용자\",\"value\":\"U\"}]}]', 'createUser', '2023-03-08 14:06:26', 'deleteUser', NULL, 'getUser', '[{\"order\":0,\"type\":\"text\",\"label\":\"아이디\",\"key\":\"id\",\"value\":\"\"},{\"order\":1,\"type\":\"text\",\"label\":\"계정\",\"key\":\"account\",\"value\":\"\"},{\"order\":2,\"type\":\"text\",\"label\":\"비밀번호\",\"key\":\"password\",\"value\":\"\"},{\"order\":3,\"type\":\"text\",\"label\":\"사용자명\",\"key\":\"username\",\"value\":\"\"},{\"order\":4,\"type\":\"text\",\"label\":\"시스템관리자\",\"key\":\"isSystemAdmin\",\"value\":\"\"},{\"order\":5,\"type\":\"text\",\"label\":\"관리자\",\"key\":\"isAdmin\",\"value\":\"\"},{\"order\":6,\"type\":\"text\",\"label\":\"생성일자\",\"key\":\"createdAt\",\"value\":\"\"},{\"order\":7,\"type\":\"text\",\"label\":\"수정일자\",\"key\":\"updatedAt\",\"value\":\"\"},{\"order\":8,\"type\":\"text\",\"label\":\"삭제일자\",\"key\":\"deletedAt\",\"value\":\"\"}]', 2, 'getUserList', '[{\"order\":0,\"type\":\"text\",\"label\":\"계정\",\"key\":\"account\",\"value\":\"\"},{\"order\":1,\"type\":\"select\",\"label\":\"권한\",\"key\":\"role\",\"value\":\"\",\"list\":[{\"label\":\"시스템관리자\",\"value\":\"SA\"},{\"label\":\"관리자\",\"value\":\"A\"},{\"label\":\"사용자\",\"value\":\"U\"}]},{\"order\":2,\"type\":\"date\",\"label\":\"생성일자\",\"key\":\"createdAt\",\"value\":\"\"}]', '사용자를 관리할 수 있습니다.', '[]', '사용자 관리', NULL, 'userList', 1, 1, 1, 1);

-- 초기 메뉴
insert into `_menu` (`icon`, `path`, `route`, `title`, `type`, `created_at`) values 
(NULL, NULL, NULL, '사용자', 'line', now());
insert into `_menu` (`icon`, `path`, `route`, `title`, `type`, `created_at`) values 
('material-symbols:person', 'userList', 'common', '사용자 관리', 'menu', now());
insert into `_menu` (`icon`, `path`, `route`, `title`, `type`, `created_at`) values 
('mdi:account-clock', 'userHistory', 'common', '로그인 이력', 'menu', now());

insert into `_menu_order` (`id`, `menu_id`, `menu_order`, `permission`) values 
(1, 1, 1, 'SA');
insert into `_menu_order` (`id`, `menu_id`, `menu_order`, `permission`) values 
(2, 2, 2, 'SA');
insert into `_menu_order` (`id`, `menu_id`, `menu_order`, `permission`) values 
(3, 3, 3, 'SA');
