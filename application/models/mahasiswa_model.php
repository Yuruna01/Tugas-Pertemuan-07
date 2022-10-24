<?php

class mahasiswa_model extends CI_Model
{
    function get_mahasiswa()
    {
        $result = $this->db->get('mahasiswa');
        return $result;
    }
    function delete($NIM)
    {
        $this->db->where('NIM',$NIM);
        $this->db->delete('mahasiswa');
    }
}
