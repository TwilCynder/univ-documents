package client;


import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Container;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.IOException;

import javax.swing.GroupLayout;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextField;
import javax.swing.JTree;

import communication.LoginAnswerMessage;
import communication.LoginRequestMessage;

public class GestionaireInterface implements ActionListener{
	
	private  JFrame connexionframe;
	private  JPanel panel;
	private  JLabel userLabel;
	private  JTextField usertextfield;
	private  JLabel passwordLabel;
	private  JTextField passwordtextfield;
	private  JButton loginButton;
	private  JLabel logged;
	private String user;
	
	private static Connexion conn;
	
	public GestionaireInterface() {
		initComponenent();
	}
	
	
	public void initComponenent() {
		connexionframe = new JFrame("Connexion");
		connexionframe.setSize(400, 450);
		connexionframe.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		connexionframe.setLocation(400, 200);
		
		
		panel = new JPanel();
		
		panel.setLayout(null);
		
		userLabel = new JLabel("Identifiant");
		userLabel.setBounds(150,20,80,25);
		usertextfield = new JTextField(30);
		usertextfield.setBounds(100,40,165,25);
		usertextfield.setVisible(true);
		
		passwordLabel = new JLabel("Mot de passe");
		passwordLabel.setBounds(150,80,80,25);
		passwordtextfield = new JTextField(30);
		passwordtextfield.setBounds(100, 100, 165, 25);
		
		loginButton = new JButton("Connexion");
		loginButton.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				String user = usertextfield.getText();
				String password = passwordtextfield.getText();
				
				conn.writeObject(new LoginRequestMessage(user, password));
				
				try {
					Object obj = conn.readObject();
					System.out.println(obj.getClass());
					
					if (obj instanceof LoginAnswerMessage) {
						if (((LoginAnswerMessage)obj).isSuccess()){
							mesagerieInterface();	
						} else {
							logged.setText("Login erroné");
							logged.setForeground(Color.RED);
						}
					}
						
				} catch (ClassNotFoundException e1) {
					e1.printStackTrace();
				} catch (IOException e1) {
					e1.printStackTrace();
				}
				

				
			}
		});
        loginButton.setBounds(120, 150, 120, 25);
        
		
        logged = new JLabel("");
        logged.setBounds(150, 180, 80, 25);
        
        panel.add(userLabel);
        panel.add(usertextfield);
		panel.add(passwordLabel);
		panel.add(passwordtextfield);
		panel.add(loginButton);
		panel.add(logged);
		
		connexionframe.add(panel);
		connexionframe.setVisible(true);
	}
	
	private JFrame messagerieframe;
	
	
	public void mesagerieInterface() {
		messagerieframe = new JFrame("Messagerie");
		messagerieframe.setSize(900, 550);
		messagerieframe.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		messagerieframe.setVisible(true);
		messagerieframe.setLocation(400, 200);
		messagerieframe.setLayout(new BorderLayout());
		
		JTree leftPanel  = new JTree();
		JScrollPane rightPanel = new JScrollPane();
		JPanel southPanel = new JPanel();
		
		
		//southPanel
		JTextField messagetextfield = new JTextField(60);
		messagetextfield.setBounds(100,70,100,25);
		messagetextfield.setVisible(true);
		
		JButton sendButton = new JButton("Envoyer");
		sendButton.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				System.out.println("Envoi message : " + messagetextfield.getText());
			}
			
		});
		
		southPanel.add(messagetextfield);
		southPanel.add(sendButton);
		
		//westPanel
		
		
		
		
		//centerPanel
		
		
		messagerieframe.add(BorderLayout.CENTER, rightPanel);
		messagerieframe.add(BorderLayout.WEST, leftPanel);
		messagerieframe.add(BorderLayout.SOUTH, southPanel); 
		
		
		
	}
	
	
	
	public static void main(String[] args) {
		conn = new Connexion("localhost", 5000);
		new GestionaireInterface();
	}


	@Override
	public void actionPerformed(ActionEvent e) {
		
	}


	

}
