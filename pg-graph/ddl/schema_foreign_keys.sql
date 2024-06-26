ALTER TABLE forum ADD FOREIGN KEY (f_moderatorid) REFERENCES person;
ALTER TABLE forum_person ADD FOREIGN KEY (fp_forumid) REFERENCES forum;
ALTER TABLE forum_person ADD FOREIGN KEY (fp_personid) REFERENCES person;
ALTER TABLE forum_tag ADD FOREIGN KEY (ft_forumid) REFERENCES forum;
ALTER TABLE forum_tag ADD FOREIGN KEY (ft_tagid) REFERENCES tag;
ALTER TABLE knows ADD FOREIGN KEY (k_person1id) REFERENCES person;
ALTER TABLE knows ADD FOREIGN KEY (k_person2id) REFERENCES person;
ALTER TABLE likes ADD FOREIGN KEY (l_personid) REFERENCES person;
ALTER TABLE likes ADD FOREIGN KEY (l_messageid) REFERENCES message;
ALTER TABLE organisation ADD FOREIGN KEY (o_placeid) REFERENCES place;
ALTER TABLE person ADD FOREIGN KEY (p_placeid) REFERENCES place;
ALTER TABLE person_company ADD FOREIGN KEY (pc_personid) REFERENCES person;
ALTER TABLE person_company ADD FOREIGN KEY (pc_organisationid) REFERENCES organisation;
ALTER TABLE person_email ADD FOREIGN KEY (pe_personid) REFERENCES person;
ALTER TABLE person_language ADD FOREIGN KEY (plang_personid) REFERENCES person;
ALTER TABLE person_tag ADD FOREIGN KEY (pt_personid) REFERENCES person;
ALTER TABLE person_tag ADD FOREIGN KEY (pt_tagid) REFERENCES tag;
ALTER TABLE person_university ADD FOREIGN KEY (pu_personid) REFERENCES person;
ALTER TABLE person_university ADD FOREIGN KEY (pu_organisationid) REFERENCES organisation;
ALTER TABLE place ADD FOREIGN KEY (pl_containerplaceid) REFERENCES place;
ALTER TABLE message ADD FOREIGN KEY (m_creatorid) REFERENCES person;
ALTER TABLE message ADD FOREIGN KEY (m_locationid) REFERENCES place;
ALTER TABLE message ADD FOREIGN KEY (m_ps_forumid) REFERENCES forum;
ALTER TABLE message ADD FOREIGN KEY (m_c_replyof) REFERENCES message;
ALTER TABLE message_tag ADD FOREIGN KEY (mt_messageid) REFERENCES message;
ALTER TABLE message_tag ADD FOREIGN KEY (mt_tagid) REFERENCES tag;
ALTER TABLE tag ADD FOREIGN KEY (t_tagclassid) REFERENCES tagclass;
ALTER TABLE tagclass ADD FOREIGN KEY (tc_subclassoftagclassid) REFERENCES tagclass;
