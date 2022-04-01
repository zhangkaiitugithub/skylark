kotlin = {}

function kotlin.get_keywords()
    local keywords0_set = "abstract actual as break by catch class companion const constructor continue crossinline data delegate do dynamic else enum expect external false field file final finally for fun get if import in infix init inline inner interface internal is it lateinit noinline null object open operator out override package param private property protected public receiver reified return sealed set setparam super suspend tailrec this throw true try typealias typeof val value var vararg when where while AnnotationRetention AnnotationTarget DeprecationLevel ElementType LazyThreadSafetyMode RegexOption RetentionPolicy assert check error print println readLine require constructor exception param property receiver return sample see since suppress throws"
    local keywords1_set = "AbstractCollection AbstractIterator AbstractList AbstractMap AbstractMutableCollection AbstractMutableList AbstractMutableMap AbstractMutableSet AbstractQueue AbstractSequentialList AbstractSet ActionBar Activity AdapterView AlertDialog Any Application Array ArrayAdapter ArrayBlockingQueue ArrayDeque ArrayList Arrays AtomicBoolean AtomicInteger AtomicLong AtomicReference AudioFormat AudioManager AudioRecord AudioTrack Base64 BaseAdapter BigDecimal BigInteger Binder BitSet Bitmap Boolean BooleanArray Buffer BufferedInputStream BufferedOutputStream BufferedReader BufferedWriter Build Bundle Button Byte ByteArray ByteArrayInputStream ByteArrayOutputStream ByteBuffer ByteOrder Calendar Canvas Char CharArray CharArrayReader CharArrayWriter CharBuffer Character Charset CheckBox ChoiceFormat Class ClassLoader Collections Collectors Color ConcurrentHashMap ConcurrentLinkedDeque ConcurrentLinkedQueue Console Constructor Context ContextWrapper Copy CountDownLatch Currency DataInputStream DataOutputStream DatagramPacket DatagramSocket Date DateFormat DecimalFormat DeflaterOutputStream Dialog Dictionary Display Double DoubleArray DoubleBuffer Drawable EOFException EditText Enum EnumMap EnumSet Environment Error EventObject Exception Field File FileDescriptor FileInputStream FileOutputStream FilePermission FileReader FileSystem FileWriter FilterInputStream FilterOutputStream FilterReader FilterWriter Float FloatArray FloatBuffer Format Formatter GZIPInputStream GZIPOutputStream Gradle GregorianCalendar GridView Handler HashMap HashSet Hashtable HttpClient HttpCookie HttpRequest HttpURLConnection IOError IOException Image ImageButton ImageView IndexedValue Inet4Address Inet6Address InetAddress InetSocketAddress InflaterInputStream InputStream InputStreamReader Int IntArray IntBuffer Integer Intent IntentFilter JarEntry JarException JarFile JarInputStream JarOutputStream JavaCompile KeyEvent LayoutInflater LinearLayout LinkedHashMap LinkedHashSet LinkedList ListView Locale Long LongArray LongBuffer Looper MappedByteBuffer MatchGroup Matcher Math Matrix Message MessageFormat Method Modifier Module MotionEvent MulticastSocket Nothing Notification Number NumberFormat Object ObjectInputStream ObjectOutputStream Optional OutputStream OutputStreamWriter Package Paint Pair Parcel Pattern PendingIntent PhantomReference PipedInputStream PipedOutputStream PipedReader PipedWriter Point PointF PrintStream PrintWriter PriorityQueue Process ProcessBuilder ProgressBar Project Properties RadioButton RadioGroup Random Reader Record Rect RectF Reference ReferenceQueue Regex Region RelativeLayout RemoteException Result Runtime RuntimeException Scanner Script ScrollView SearchView SecurityManager SeekBar Semaphore ServerSocket Service ServiceLoader Settings Short ShortArray ShortBuffer SimpleDateFormat Socket SocketAddress SoftReference SourceSet Spinner Stack StackView String StringBuffer StringBuilder StringJoiner StringReader StringTokenizer StringWriter System TableLayout Task TextView Thread ThreadGroup ThreadLocal ThreadPoolExecutor Throwable TimeZone Timer TimerTask Toast ToggleButton TreeMap TreeSet Triple UByte UByteArray UInt UIntArray ULong ULongArray URI URL URLConnection URLDecoder URLEncoder UShort UShortArray UUID Unit Vector View ViewGroup Void WeakHashMap WeakReference Window Writer ZipEntry ZipException ZipFile ZipInputStream ZipOutputStream Adapter Annotation Appendable AutoCloseable BaseStream BlockingDeque BlockingQueue ByteChannel Callable Channel CharSequence Cloneable Closeable Collection Collector Comparable Comparator ConcurrentMap Condition DataInput DataOutput Deque DoubleStream Enumeration EventListener Executor Flushable Formattable Function Future Grouping HttpResponse IBinder IInterface IntStream Iterable Iterator Lazy List ListAdapter ListIterator Lock LongStream Map MatchGroupCollection MatchResult Menu MenuItem MutableCollection MutableIterable MutableIterator MutableList MutableListIterator MutableMap MutableSet NavigableMap NavigableSet ObjectInput ObjectOutput OnClickListener Parcelable Path Predicate Queue RandomAccess ReadWriteLock Readable Runnable Serializable Set SortedMap SortedSet Spliterator Stream WebSocket Basic Column Delegate DelegatesTo Deprecated Documented Entity FunctionalInterface Generated Id Inherited ManagedBean Metadata MustBeDocumented Native NonEmpty NonNull OrderBy OrderColumn Override PostConstruct PreDestroy Priority Readonly Repeatable ReplaceWith Resource Resources Retention SafeVarargs Serial Suppress SuppressWarnings Table Target Transient Version"   
	return keywords0_set,keywords1_set
end	

function kotlin.get_autocomplete()
    local autocomplete_set = "abstract actual annotation break catch class companion const constructor continue crossinline data delegate dynamic else enum expect external false field file final finally for fun get import infix init inline inner interface internal lateinit noinline null object open operator out override package param private property protected public receiver reified return sealed set setparam super suspend tailrec this throw true try typealias typeof val value var vararg when where while AnnotationRetention AnnotationTarget DeprecationLevel ElementType LazyThreadSafetyMode RegexOption RetentionPolicy AbstractCollection AbstractIterator AbstractList AbstractMap AbstractMutableCollection AbstractMutableList AbstractMutableMap AbstractMutableSet AbstractQueue AbstractSequentialList AbstractSet ActionBar Activity AdapterView AlertDialog Any Application Array ArrayAdapter ArrayBlockingQueue ArrayDeque ArrayList Arrays AtomicBoolean AtomicInteger AtomicLong AtomicReference AudioFormat AudioManager AudioRecord AudioTrack Base64 BaseAdapter BigDecimal BigInteger Binder BitSet Bitmap Boolean BooleanArray Buffer BufferedInputStream BufferedOutputStream BufferedReader BufferedWriter Build Bundle Button Byte ByteArray ByteArrayInputStream ByteArrayOutputStream ByteBuffer ByteOrder Calendar Canvas Char CharArray CharArrayReader CharArrayWriter CharBuffer Character Charset CheckBox ChoiceFormat Class ClassLoader Collections Collectors Color ConcurrentHashMap ConcurrentLinkedDeque ConcurrentLinkedQueue Console Constructor Context ContextWrapper Copy CountDownLatch Currency DataInputStream DataOutputStream DatagramPacket DatagramSocket Date DateFormat DecimalFormat DeflaterOutputStream Dialog Dictionary Display Double DoubleArray DoubleBuffer Drawable EOFException EditText Enum EnumMap EnumSet Environment Error EventObject Exception Field File FileDescriptor FileInputStream FileOutputStream FilePermission FileReader FileSystem FileWriter FilterInputStream FilterOutputStream FilterReader FilterWriter Float FloatArray FloatBuffer Format Formatter GZIPInputStream GZIPOutputStream Gradle GregorianCalendar GridView Handler HashMap HashSet Hashtable HttpClient HttpCookie HttpRequest HttpURLConnection IOError IOException Image ImageButton ImageView IndexedValue Inet4Address Inet6Address InetAddress InetSocketAddress InflaterInputStream InputStream InputStreamReader Int IntArray IntBuffer Integer Intent IntentFilter JarEntry JarException JarFile JarInputStream JarOutputStream JavaCompile KeyEvent LayoutInflater LinearLayout LinkedHashMap LinkedHashSet LinkedList ListView Locale Long LongArray LongBuffer Looper MappedByteBuffer MatchGroup Matcher Math Matrix Message MessageFormat Method Modifier Module MotionEvent MulticastSocket Nothing Notification Number NumberFormat Object ObjectInputStream ObjectOutputStream Optional OutputStream OutputStreamWriter Package Paint Pair Parcel Pattern PendingIntent PhantomReference PipedInputStream PipedOutputStream PipedReader PipedWriter Point PointF PrintStream PrintWriter PriorityQueue Process ProcessBuilder ProgressBar Project Properties RadioButton RadioGroup Random Reader Record Rect RectF Reference ReferenceQueue Regex Region RelativeLayout RemoteException Result Runtime RuntimeException Scanner Script ScrollView SearchView SecurityManager SeekBar Semaphore ServerSocket Service ServiceLoader Settings Short ShortArray ShortBuffer SimpleDateFormat Socket SocketAddress SoftReference SourceSet Spinner Stack StackView String StringBuffer StringBuilder StringJoiner StringReader StringTokenizer StringWriter System TableLayout Task TextView Thread ThreadGroup ThreadLocal ThreadPoolExecutor Throwable TimeZone Timer TimerTask Toast ToggleButton TreeMap TreeSet Triple UByte UByteArray UInt UIntArray ULong ULongArray URI URL URLConnection URLDecoder URLEncoder UShort UShortArray UUID Unit Vector View ViewGroup Void WeakHashMap WeakReference Window Writer ZipEntry ZipException ZipFile ZipInputStream ZipOutputStream Adapter Annotation Appendable AutoCloseable BaseStream BlockingDeque BlockingQueue ByteChannel Callable Channel CharSequence Cloneable Closeable Collection Collector Comparable Comparator ConcurrentMap Condition DataInput DataOutput Deque DoubleStream Enumeration EventListener Executor Flushable Formattable Function Future Grouping HttpResponse IBinder IInterface IntStream Iterable Iterator Lazy List ListAdapter ListIterator Lock LongStream Map MatchGroupCollection MatchResult Menu MenuItem MutableCollection MutableIterable MutableIterator MutableList MutableListIterator MutableMap MutableSet NavigableMap NavigableSet ObjectInput ObjectOutput OnClickListener Parcelable Path Predicate Queue RandomAccess ReadWriteLock Readable Runnable Serializable Set SortedMap SortedSet Spliterator Stream WebSocket Basic Column Delegate DelegatesTo Deprecated Documented Entity FunctionalInterface Generated Inherited ManagedBean Metadata MustBeDocumented Native NonEmpty NonNull OrderBy OrderColumn Override PostConstruct PreDestroy Priority Readonly Repeatable ReplaceWith Resource Resources Retention SafeVarargs Serial Suppress SuppressWarnings Table Target Transient Version"
	return autocomplete_set
end	

function kotlin.get_reqular()
    local symbol_reqular_exp = "[\\*_a-zA-Z]+[_a-zA-Z0-9]*[ \\t*]+([_a-zA-Z]+[_a-zA-Z0-9:]*)\\([^\\(^;]*$"
    return symbol_reqular_exp
end

return kotlin
