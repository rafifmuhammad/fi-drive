<?php

class M_drive extends CI_Model
{

    public function get_files()
    {
        return $this->db->get('tb_files')->result();
    }

    public function input_file($data, $table)
    {
        $this->db->insert($table, $data);
    }

    public function delete_file($where, $table)
    {
        $this->db->where($where);
        $this->db->delete($table);
    }

    public function get_single_file($where, $table)
    {
        $this->db->where($where);
        return $this->db->get($table)->result();
    }
}
