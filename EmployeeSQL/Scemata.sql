CREATE TABLE public."Departments" (
    dept_no character varying(20) NOT NULL,
    dept_name character varying(50) NOT NULL
);

CREATE TABLE public."Dept_Emp" (
    emp_no integer NOT NULL,
    dept_no character varying(20) NOT NULL
);
CREATE TABLE public."Dept_Manager" (
    dept_no character varying(20) NOT NULL,
    emp_no integer NOT NULL
);
CREATE TABLE public."Employees" (
    emp_no integer NOT NULL,
    emp_title_id character varying(20) NOT NULL,
    birth_date date NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    sex character varying(20) NOT NULL,
    hire_date date NOT NULL
);
CREATE TABLE public."Salaries" (
    emp_no integer NOT NULL,
    salary numeric(19,4)
);

CREATE TABLE public."Titles" (
    title_id character varying(20) NOT NULL,
    title character varying(50) NOT NULL
);

ALTER TABLE ONLY public."Departments"
    ADD CONSTRAINT "Departments_pkey" PRIMARY KEY (dept_no);
ALTER TABLE ONLY public."Employees"
    ADD CONSTRAINT "Employees_pkey" PRIMARY KEY (emp_no);
ALTER TABLE ONLY public."Dept_Emp"
    ADD CONSTRAINT "dept_emp_PK" PRIMARY KEY (emp_no, dept_no);
ALTER TABLE ONLY public."Dept_Manager"
    ADD CONSTRAINT dept_manager_pk PRIMARY KEY (dept_no, emp_no);
ALTER TABLE ONLY public."Titles"
    ADD CONSTRAINT titles_pk PRIMARY KEY (title_id);

CREATE INDEX "fki_Dept_fK" ON public."Dept_Emp" USING btree (dept_no);
CREATE INDEX "fki_dept_no_fk2" ON public."Dept_Manager" USING btree (dept_no);
CREATE INDEX "fki_emp_fk" ON public."Dept_Emp" USING btree (emp_no);
CREATE INDEX "fki_emp_fk2" ON public."Salaries" USING btree (emp_no);
CREATE INDEX "fki_emp_no_fK3" ON public."Dept_Manager" USING btree (emp_no);
CREATE INDEX "fki_title_fK" ON public."Employees" USING btree (emp_title_id);

ALTER TABLE ONLY public."Dept_Emp"
    ADD CONSTRAINT "Dept_fK" FOREIGN KEY (dept_no) REFERENCES public."Departments"(dept_no) NOT VALID;
ALTER TABLE ONLY public."Dept_Manager"
    ADD CONSTRAINT "dept_no_fk2" FOREIGN KEY (dept_no) REFERENCES public."Departments"(dept_no) NOT VALID;
ALTER TABLE ONLY public."Dept_Emp"
    ADD CONSTRAINT "emp_fk" FOREIGN KEY (emp_no) REFERENCES public."Employees"(emp_no) NOT VALID;
ALTER TABLE ONLY public."Salaries"
    ADD CONSTRAINT "emp_fk2" FOREIGN KEY (emp_no) REFERENCES public."Employees"(emp_no) NOT VALID;
ALTER TABLE ONLY public."Dept_Manager"
    ADD CONSTRAINT "emp_no_fK3" FOREIGN KEY (emp_no) REFERENCES public."Employees"(emp_no) NOT VALID;
ALTER TABLE ONLY public."Employees"
    ADD CONSTRAINT "title_fK" FOREIGN KEY (emp_title_id) REFERENCES public."Titles"(title_id) NOT VALID;
