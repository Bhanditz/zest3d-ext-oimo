package zest3d.ext.oimo
{
	import com.element.oimo.physics.collision.shape.Shape;
	import com.element.oimo.physics.collision.shape.ShapeConfig;
	import com.element.oimo.physics.dynamics.RigidBody;
	import plugin.math.algebra.AVector;
	import zest3d.scenegraph.Spatial;
	
	public class OimoSpatial3D
	{
		public var rigidBody:RigidBody;
		public var spatial:Spatial;
		public var shape:Shape;
		
		public function OimoSpatial3D( shape:Shape, spatial:Spatial, type:uint = 0x0 )
		{
			this.shape = shape;
			this.spatial = spatial;
			rigidBody = new RigidBody();
			rigidBody.addShape(shape);
			rigidBody.setupMass(type);
		}
		
		public function set friction(num:Number):void
		{
			shape.friction = num;
		}
		public function set restitution(num:Number):void
		{
			shape.restitution = num;
		}
		
		public function getPosition():AVector
		{
			return new AVector(rigidBody.position.x, rigidBody.position.y, rigidBody.position.z);
		}
		
		public function setPosition(x:Number = 0, y:Number = 0, z:Number = 0):void
		{
			rigidBody.position.x = x;
			rigidBody.position.y = y;
			rigidBody.position.z = z;
		}
		
		public function get x():Number
		{
			return rigidBody.position.x;
		}
		
		public function set x(num:Number):void
		{
			rigidBody.position.x = num;
		}
		
		public function get y():Number
		{
			return rigidBody.position.y;
		}
		
		public function set y(num:Number):void
		{
			rigidBody.position.y = num;
		}
		
		public function get z():Number
		{
			return rigidBody.position.z;
		}
		
		public function set z(num:Number):void
		{
			rigidBody.position.z = num;
		}
	}
}