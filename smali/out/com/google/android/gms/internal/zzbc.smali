.class public Lcom/google/android/gms/internal/zzbc;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;

.field protected static final zzaid:Ljava/lang/Object;

.field protected static final zzaih:Ljava/lang/Object;

.field private static zzaij:Lcom/google/android/gms/common/zzc;


# instance fields
.field private volatile zzagy:Z

.field protected zzahs:Landroid/content/Context;

.field protected zzaht:Landroid/content/Context;

.field private zzahu:Ljava/util/concurrent/ExecutorService;

.field private zzahv:Ldalvik/system/DexClassLoader;

.field private zzahw:Lcom/google/android/gms/internal/zzax;

.field private zzahx:[B

.field private volatile zzahy:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

.field private zzahz:Ljava/util/concurrent/Future;

.field private volatile zzaia:Lcom/google/android/gms/internal/zzaf$zza;

.field private zzaib:Ljava/util/concurrent/Future;

.field private volatile zzaic:Z

.field private zzaie:Lcom/google/android/gms/internal/zzap;

.field private zzaif:Lcom/google/android/gms/common/api/GoogleApiClient;

.field protected zzaig:Z

.field protected zzaii:Z

.field protected zzaik:Z

.field private zzail:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/zzbx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/android/gms/internal/zzbc;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbc;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbc;->zzaid:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbc;->zzaih:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzbc;->zzaij:Lcom/google/android/gms/common/zzc;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbc;->zzahy:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbc;->zzagy:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbc;->zzahz:Ljava/util/concurrent/Future;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbc;->zzaia:Lcom/google/android/gms/internal/zzaf$zza;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbc;->zzaib:Ljava/util/concurrent/Future;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbc;->zzaic:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbc;->zzaif:Lcom/google/android/gms/common/api/GoogleApiClient;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbc;->zzaig:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbc;->zzaii:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbc;->zzaik:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbc;->zzahs:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbc;->zzaht:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbc;->zzail:Ljava/util/Map;

    return-void
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/internal/zzbc;
    .registers 6

    new-instance v0, Lcom/google/android/gms/internal/zzbc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbc;-><init>(Landroid/content/Context;)V

    :try_start_5
    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzbc;->zzc(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_8
    .catch Lcom/google/android/gms/internal/zzaz; {:try_start_5 .. :try_end_8} :catch_c

    move-result v1

    if-eqz v1, :cond_d

    :goto_b
    return-object v0

    :catch_c
    move-exception v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private zza(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 9
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzax$zza;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v0, Ljava/io/File;

    const-string v1, "%s/%s.jar"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v4

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_31

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbc;->zzahw:Lcom/google/android/gms/internal/zzax;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbc;->zzahx:[B

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/zzax;->zzc([BLjava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    array-length v3, v1

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_31
    return-object v0
.end method

.method private zza(Ljava/io/File;)V
    .registers 7

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1c

    sget-object v0, Lcom/google/android/gms/internal/zzbc;->TAG:Ljava/lang/String;

    const-string v1, "File %s not found. No need for deletion"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1b
    return-void

    :cond_1c
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_1b
.end method

.method private zza(Ljava/io/File;Ljava/lang/String;)V
    .registers 14

    const/4 v1, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v3, Ljava/io/File;

    const-string v0, "%s/%s.tmp"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p2, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    new-instance v4, Ljava/io/File;

    const-string v0, "%s/%s.dex"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p2, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_1b

    long-to-int v0, v6

    new-array v0, v0, [B

    :try_start_40
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_45} :catch_e5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_40 .. :try_end_45} :catch_9e
    .catch Lcom/google/android/gms/internal/zzax$zza; {:try_start_40 .. :try_end_45} :catch_db
    .catchall {:try_start_40 .. :try_end_45} :catchall_af

    :try_start_45
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_e8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_45 .. :try_end_48} :catch_d4
    .catch Lcom/google/android/gms/internal/zzax$zza; {:try_start_45 .. :try_end_48} :catch_de
    .catchall {:try_start_45 .. :try_end_48} :catchall_cd

    move-result v5

    if-gtz v5, :cond_54

    if-eqz v2, :cond_50

    :try_start_4d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_bf

    :cond_50
    :goto_50
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/zzbc;->zza(Ljava/io/File;)V

    goto :goto_1b

    :cond_54
    :try_start_54
    new-instance v5, Lcom/google/android/gms/internal/zzaf$zzd;

    invoke-direct {v5}, Lcom/google/android/gms/internal/zzaf$zzd;-><init>()V

    sget-object v6, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/gms/internal/zzaf$zzd;->zzfx:[B

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/gms/internal/zzaf$zzd;->zzfw:[B

    iget-object v6, p0, Lcom/google/android/gms/internal/zzbc;->zzahw:Lcom/google/android/gms/internal/zzax;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzbc;->zzahx:[B

    invoke-virtual {v6, v7, v0}, Lcom/google/android/gms/internal/zzax;->zzd([B[B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, v5, Lcom/google/android/gms/internal/zzaf$zzd;->data:[B

    invoke-static {v0}, Lcom/google/android/gms/internal/zzan;->zzh([B)[B

    move-result-object v0

    iput-object v0, v5, Lcom/google/android/gms/internal/zzaf$zzd;->zzfv:[B

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_83} :catch_e8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_54 .. :try_end_83} :catch_d4
    .catch Lcom/google/android/gms/internal/zzax$zza; {:try_start_54 .. :try_end_83} :catch_de
    .catchall {:try_start_54 .. :try_end_83} :catchall_cd

    :try_start_83
    invoke-static {v5}, Lcom/google/android/gms/internal/zzasa;->zzf(Lcom/google/android/gms/internal/zzasa;)[B

    move-result-object v1

    const/4 v3, 0x0

    array-length v5, v1

    invoke-virtual {v0, v1, v3, v5}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_8f} :catch_ec
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_83 .. :try_end_8f} :catch_d8
    .catch Lcom/google/android/gms/internal/zzax$zza; {:try_start_83 .. :try_end_8f} :catch_e2
    .catchall {:try_start_83 .. :try_end_8f} :catchall_cf

    if-eqz v2, :cond_94

    :try_start_91
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_c1

    :cond_94
    :goto_94
    if-eqz v0, :cond_99

    :try_start_96
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_c3

    :cond_99
    :goto_99
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/zzbc;->zza(Ljava/io/File;)V

    goto/16 :goto_1b

    :catch_9e
    move-exception v0

    move-object v0, v1

    :goto_a0
    if-eqz v1, :cond_a5

    :try_start_a2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a5} :catch_c5

    :cond_a5
    :goto_a5
    if-eqz v0, :cond_aa

    :try_start_a7
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_aa} :catch_c7

    :cond_aa
    :goto_aa
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/zzbc;->zza(Ljava/io/File;)V

    goto/16 :goto_1b

    :catchall_af
    move-exception v0

    move-object v2, v1

    :goto_b1
    if-eqz v2, :cond_b6

    :try_start_b3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b6} :catch_c9

    :cond_b6
    :goto_b6
    if-eqz v1, :cond_bb

    :try_start_b8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_bb} :catch_cb

    :cond_bb
    :goto_bb
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/zzbc;->zza(Ljava/io/File;)V

    throw v0

    :catch_bf
    move-exception v0

    goto :goto_50

    :catch_c1
    move-exception v1

    goto :goto_94

    :catch_c3
    move-exception v0

    goto :goto_99

    :catch_c5
    move-exception v1

    goto :goto_a5

    :catch_c7
    move-exception v0

    goto :goto_aa

    :catch_c9
    move-exception v2

    goto :goto_b6

    :catch_cb
    move-exception v1

    goto :goto_bb

    :catchall_cd
    move-exception v0

    goto :goto_b1

    :catchall_cf
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_b1

    :catch_d4
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_a0

    :catch_d8
    move-exception v1

    move-object v1, v2

    goto :goto_a0

    :catch_db
    move-exception v0

    move-object v0, v1

    goto :goto_a0

    :catch_de
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_a0

    :catch_e2
    move-exception v1

    move-object v1, v2

    goto :goto_a0

    :catch_e5
    move-exception v0

    move-object v0, v1

    goto :goto_a0

    :catch_e8
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_a0

    :catch_ec
    move-exception v1

    move-object v1, v2

    goto :goto_a0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbc;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzbc;->zzaic:Z

    return p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzbc;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbc;->zzcx()V

    return-void
.end method

.method private zzb(Ljava/io/File;Ljava/lang/String;)Z
    .registers 13

    const/4 v1, 0x0

    const/4 v6, 0x2

    const/4 v0, 0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/io/File;

    const-string v4, "%s/%s.tmp"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v2

    aput-object p2, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1d

    move v0, v2

    :cond_1c
    :goto_1c
    return v0

    :cond_1d
    new-instance v5, Ljava/io/File;

    const-string v4, "%s/%s.dex"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v2

    aput-object p2, v6, v0

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_36

    move v0, v2

    goto :goto_1c

    :cond_36
    :try_start_36
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-gtz v4, :cond_45

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/zzbc;->zza(Ljava/io/File;)V

    move v0, v2

    goto :goto_1c

    :cond_45
    long-to-int v4, v6

    new-array v6, v4, [B

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_4d} :catch_109
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_36 .. :try_end_4d} :catch_c6
    .catch Lcom/google/android/gms/internal/zzax$zza; {:try_start_36 .. :try_end_4d} :catch_fe
    .catchall {:try_start_36 .. :try_end_4d} :catchall_d5

    :try_start_4d
    invoke-virtual {v4, v6}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    if-gtz v7, :cond_64

    sget-object v0, Lcom/google/android/gms/internal/zzbc;->TAG:Ljava/lang/String;

    const-string v5, "Cannot read the cache data."

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/zzbc;->zza(Ljava/io/File;)V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_5d} :catch_10c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4d .. :try_end_5d} :catch_f6
    .catch Lcom/google/android/gms/internal/zzax$zza; {:try_start_4d .. :try_end_5d} :catch_101
    .catchall {:try_start_4d .. :try_end_5d} :catchall_f1

    if-eqz v4, :cond_62

    :try_start_5f
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_e2

    :cond_62
    :goto_62
    move v0, v2

    goto :goto_1c

    :cond_64
    :try_start_64
    invoke-static {v6}, Lcom/google/android/gms/internal/zzaf$zzd;->zze([B)Lcom/google/android/gms/internal/zzaf$zzd;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    iget-object v8, v6, Lcom/google/android/gms/internal/zzaf$zzd;->zzfw:[B

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_91

    iget-object v7, v6, Lcom/google/android/gms/internal/zzaf$zzd;->zzfv:[B

    iget-object v8, v6, Lcom/google/android/gms/internal/zzaf$zzd;->data:[B

    invoke-static {v8}, Lcom/google/android/gms/internal/zzan;->zzh([B)[B

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_91

    iget-object v7, v6, Lcom/google/android/gms/internal/zzaf$zzd;->zzfx:[B

    sget-object v8, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-nez v7, :cond_9b

    :cond_91
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/zzbc;->zza(Ljava/io/File;)V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_94} :catch_10c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_64 .. :try_end_94} :catch_f6
    .catch Lcom/google/android/gms/internal/zzax$zza; {:try_start_64 .. :try_end_94} :catch_101
    .catchall {:try_start_64 .. :try_end_94} :catchall_f1

    if-eqz v4, :cond_99

    :try_start_96
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_e5

    :cond_99
    :goto_99
    move v0, v2

    goto :goto_1c

    :cond_9b
    :try_start_9b
    iget-object v3, p0, Lcom/google/android/gms/internal/zzbc;->zzahw:Lcom/google/android/gms/internal/zzax;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzbc;->zzahx:[B

    new-instance v8, Ljava/lang/String;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzaf$zzd;->data:[B

    invoke-direct {v8, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v7, v8}, Lcom/google/android/gms/internal/zzax;->zzc([BLjava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_b2} :catch_10c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9b .. :try_end_b2} :catch_f6
    .catch Lcom/google/android/gms/internal/zzax$zza; {:try_start_9b .. :try_end_b2} :catch_101
    .catchall {:try_start_9b .. :try_end_b2} :catchall_f1

    const/4 v1, 0x0

    :try_start_b3
    array-length v5, v6

    invoke-virtual {v3, v6, v1, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b7} :catch_110
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b3 .. :try_end_b7} :catch_fa
    .catch Lcom/google/android/gms/internal/zzax$zza; {:try_start_b3 .. :try_end_b7} :catch_105
    .catchall {:try_start_b3 .. :try_end_b7} :catchall_f3

    if-eqz v4, :cond_bc

    :try_start_b9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_bc} :catch_e7

    :cond_bc
    :goto_bc
    if-eqz v3, :cond_1c

    :try_start_be
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_c1} :catch_c3

    goto/16 :goto_1c

    :catch_c3
    move-exception v1

    goto/16 :goto_1c

    :catch_c6
    move-exception v0

    move-object v0, v1

    :goto_c8
    if-eqz v1, :cond_cd

    :try_start_ca
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_cd} :catch_e9

    :cond_cd
    :goto_cd
    if-eqz v0, :cond_d2

    :try_start_cf
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d2} :catch_eb

    :cond_d2
    :goto_d2
    move v0, v2

    goto/16 :goto_1c

    :catchall_d5
    move-exception v0

    move-object v4, v1

    :goto_d7
    if-eqz v4, :cond_dc

    :try_start_d9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_dc} :catch_ed

    :cond_dc
    :goto_dc
    if-eqz v1, :cond_e1

    :try_start_de
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_e1} :catch_ef

    :cond_e1
    :goto_e1
    throw v0

    :catch_e2
    move-exception v0

    goto/16 :goto_62

    :catch_e5
    move-exception v0

    goto :goto_99

    :catch_e7
    move-exception v1

    goto :goto_bc

    :catch_e9
    move-exception v1

    goto :goto_cd

    :catch_eb
    move-exception v0

    goto :goto_d2

    :catch_ed
    move-exception v2

    goto :goto_dc

    :catch_ef
    move-exception v1

    goto :goto_e1

    :catchall_f1
    move-exception v0

    goto :goto_d7

    :catchall_f3
    move-exception v0

    move-object v1, v3

    goto :goto_d7

    :catch_f6
    move-exception v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_c8

    :catch_fa
    move-exception v0

    move-object v0, v3

    move-object v1, v4

    goto :goto_c8

    :catch_fe
    move-exception v0

    move-object v0, v1

    goto :goto_c8

    :catch_101
    move-exception v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_c8

    :catch_105
    move-exception v0

    move-object v0, v3

    move-object v1, v4

    goto :goto_c8

    :catch_109
    move-exception v0

    move-object v0, v1

    goto :goto_c8

    :catch_10c
    move-exception v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_c8

    :catch_110
    move-exception v0

    move-object v0, v3

    move-object v1, v4

    goto :goto_c8
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzbc;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbc;->zzda()V

    return-void
.end method

.method private zzc(Z)V
    .registers 4

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzbc;->zzagy:Z

    if-nez p1, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbc;->zzahu:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzbc$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbc$1;-><init>(Lcom/google/android/gms/internal/zzbc;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbc;->zzahz:Ljava/util/concurrent/Future;

    goto :goto_4
.end method

.method private zzc(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzaz;
        }
    .end annotation

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbc;->zzahu:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/zzbc;->zzc(Z)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbc;->zzdb()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbc;->zzcy()V

    invoke-static {}, Lcom/google/android/gms/internal/zzbe;->zzdg()Z

    move-result v0

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/google/android/gms/internal/zzdr;->zzbih:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Task Context initialization must not be called from the UI thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbc;->zzo(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbc;->zzp(Ljava/lang/String;)Z

    new-instance v0, Lcom/google/android/gms/internal/zzap;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzap;-><init>(Lcom/google/android/gms/internal/zzbc;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbc;->zzaie:Lcom/google/android/gms/internal/zzap;

    const/4 v0, 0x1

    return v0
.end method

.method private zzcx()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbc;->zzahy:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbc;->zzaht:Landroid/content/Context;

    if-eqz v0, :cond_14

    new-instance v0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbc;->zzaht:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->start()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbc;->zzahy:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;
    :try_end_14
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_14} :catch_1a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_1c
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_14} :catch_15

    :cond_14
    :goto_14
    return-void

    :catch_15
    move-exception v0

    :goto_16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbc;->zzahy:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    goto :goto_14

    :catch_1a
    move-exception v0

    goto :goto_16

    :catch_1c
    move-exception v0

    goto :goto_16
.end method

.method private zzcy()V
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzdr;->zzbij:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_f

    :goto_e
    return-void

    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbc;->zzcz()V

    goto :goto_e
.end method

.method private zzda()V
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbc;->zzaii:Z

    if-eqz v0, :cond_29

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbc;->zzahs:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbc;->zzahs:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbc;->zzahs:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbc;->zzahs:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/gass/internal/zza;->zzi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzaf$zza;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbc;->zzaia:Lcom/google/android/gms/internal/zzaf$zza;
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_29} :catch_2a

    :cond_29
    :goto_29
    return-void

    :catch_2a
    move-exception v0

    goto :goto_29
.end method

.method private zzdb()V
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbc;->zzahu:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/google/android/gms/internal/zzbc$3;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/zzbc$3;-><init>(Lcom/google/android/gms/internal/zzbc;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/google/android/gms/common/zzc;->zzaql()Lcom/google/android/gms/common/zzc;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbc;->zzaij:Lcom/google/android/gms/common/zzc;

    sget-object v0, Lcom/google/android/gms/internal/zzbc;->zzaij:Lcom/google/android/gms/common/zzc;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbc;->zzahs:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/zzc;->zzbk(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_47

    move v0, v1

    :goto_1d
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbc;->zzaig:Z

    sget-object v0, Lcom/google/android/gms/internal/zzbc;->zzaij:Lcom/google/android/gms/common/zzc;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbc;->zzahs:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/zzc;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_49

    :goto_29
    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzbc;->zzaii:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbc;->zzahs:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_46

    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbc;->zzahs:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/clearcut/zza;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbc;->zzaif:Lcom/google/android/gms/common/api/GoogleApiClient;

    :cond_46
    return-void

    :cond_47
    move v0, v2

    goto :goto_1d

    :cond_49
    move v1, v2

    goto :goto_29
.end method

.method private zzo(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzaz;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzax;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzax;-><init>(Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbc;->zzahw:Lcom/google/android/gms/internal/zzax;

    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbc;->zzahw:Lcom/google/android/gms/internal/zzax;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzax;->zzn(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbc;->zzahx:[B
    :try_end_10
    .catch Lcom/google/android/gms/internal/zzax$zza; {:try_start_8 .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzaz;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzaz;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private zzp(Ljava/lang/String;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzaz;
        }
    .end annotation

    const/4 v8, 0x1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbc;->zzahs:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbc;->zzahs:Landroid/content/Context;

    const-string v1, "dex"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_21

    new-instance v0, Lcom/google/android/gms/internal/zzaz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaz;-><init>()V

    throw v0
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1a} :catch_1a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1a} :catch_76
    .catch Lcom/google/android/gms/internal/zzax$zza; {:try_start_1 .. :try_end_1a} :catch_7d
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1a} :catch_84

    :catch_1a
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzaz;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzaz;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_21
    move-object v1, v0

    :try_start_22
    invoke-static {}, Lcom/google/android/gms/internal/zzay;->zzba()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/zzbc;->zza(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/zzbc;->zzb(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_2d} :catch_1a
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2d} :catch_76
    .catch Lcom/google/android/gms/internal/zzax$zza; {:try_start_22 .. :try_end_2d} :catch_7d
    .catch Ljava/lang/NullPointerException; {:try_start_22 .. :try_end_2d} :catch_84

    :try_start_2d
    new-instance v0, Ldalvik/system/DexClassLoader;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/gms/internal/zzbc;->zzahs:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v0, v4, v5, v6, v7}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbc;->zzahv:Ldalvik/system/DexClassLoader;
    :try_end_43
    .catchall {:try_start_2d .. :try_end_43} :catchall_5c

    :try_start_43
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/zzbc;->zza(Ljava/io/File;)V

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/zzbc;->zza(Ljava/io/File;Ljava/lang/String;)V

    const-string v0, "%s/%s.dex"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbc;->zzq(Ljava/lang/String;)V

    return v8

    :catchall_5c
    move-exception v0

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/zzbc;->zza(Ljava/io/File;)V

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/zzbc;->zza(Ljava/io/File;Ljava/lang/String;)V

    const-string v3, "%s/%s.dex"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzbc;->zzq(Ljava/lang/String;)V

    throw v0
    :try_end_76
    .catch Ljava/io/FileNotFoundException; {:try_start_43 .. :try_end_76} :catch_1a
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_76} :catch_76
    .catch Lcom/google/android/gms/internal/zzax$zza; {:try_start_43 .. :try_end_76} :catch_7d
    .catch Ljava/lang/NullPointerException; {:try_start_43 .. :try_end_76} :catch_84

    :catch_76
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzaz;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzaz;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_7d
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzaz;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzaz;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_84
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzaz;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzaz;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private zzq(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbc;->zza(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbc;->zzaht:Landroid/content/Context;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbc;->zzahs:Landroid/content/Context;

    return-object v0
.end method

.method public zza(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbc;->zzail:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbc;->zzail:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lcom/google/android/gms/internal/zzbx;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzbx;-><init>(Lcom/google/android/gms/internal/zzbc;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public zzaw()I
    .registers 3

    const/high16 v0, -0x80000000

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbc;->zzct()Lcom/google/android/gms/internal/zzap;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzap;->zzaw()I

    move-result v0

    :cond_c
    return v0
.end method

.method public zzc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbc;->zzail:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbx;

    if-nez v0, :cond_11

    const/4 v0, 0x0

    :goto_10
    return-object v0

    :cond_11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbx;->zzdq()Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_10
.end method

.method public zzcm()Ljava/util/concurrent/ExecutorService;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbc;->zzahu:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public zzcn()Ldalvik/system/DexClassLoader;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbc;->zzahv:Ldalvik/system/DexClassLoader;

    return-object v0
.end method

.method public zzco()Lcom/google/android/gms/internal/zzax;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbc;->zzahw:Lcom/google/android/gms/internal/zzax;

    return-object v0
.end method

.method public zzcp()[B
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbc;->zzahx:[B

    return-object v0
.end method

.method public zzcq()Lcom/google/android/gms/common/api/GoogleApiClient;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbc;->zzaif:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method public zzcr()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbc;->zzaig:Z

    return v0
.end method

.method public zzcs()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbc;->zzaik:Z

    return v0
.end method

.method public zzct()Lcom/google/android/gms/internal/zzap;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbc;->zzaie:Lcom/google/android/gms/internal/zzap;

    return-object v0
.end method

.method public zzcu()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbc;->zzaii:Z

    return v0
.end method

.method public zzcv()Lcom/google/android/gms/internal/zzaf$zza;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbc;->zzaia:Lcom/google/android/gms/internal/zzaf$zza;

    return-object v0
.end method

.method public zzcw()Ljava/util/concurrent/Future;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbc;->zzaib:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public zzcz()V
    .registers 4

    sget-object v1, Lcom/google/android/gms/internal/zzbc;->zzaid:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbc;->zzaic:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbc;->zzahu:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/android/gms/internal/zzbc$2;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzbc$2;-><init>(Lcom/google/android/gms/internal/zzbc;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbc;->zzaib:Ljava/util/concurrent/Future;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbc;->zzaic:Z

    :cond_17
    monitor-exit v1

    return-void

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public zzdc()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;
    .registers 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzbc;->zzagy:Z

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbc;->zzahy:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbc;->zzahy:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    goto :goto_5

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbc;->zzahz:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1d

    :try_start_11
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbc;->zzahz:Ljava/util/concurrent/Future;

    const-wide/16 v2, 0x7d0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbc;->zzahz:Ljava/util/concurrent/Future;
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_1d} :catch_2a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_11 .. :try_end_1d} :catch_28
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_11 .. :try_end_1d} :catch_20

    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbc;->zzahy:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    goto :goto_5

    :catch_20
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbc;->zzahz:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1d

    :catch_28
    move-exception v0

    goto :goto_1d

    :catch_2a
    move-exception v0

    goto :goto_1d
.end method

.method public zzdd()V
    .registers 3

    sget-object v1, Lcom/google/android/gms/internal/zzbc;->zzaih:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbc;->zzaik:Z

    if-eqz v0, :cond_9

    monitor-exit v1

    :goto_8
    return-void

    :cond_9
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbc;->zzaii:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbc;->zzaif:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbc;->zzaif:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbc;->zzaik:Z

    :goto_19
    monitor-exit v1

    goto :goto_8

    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v0

    :cond_1e
    const/4 v0, 0x0

    :try_start_1f
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbc;->zzaik:Z
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_1b

    goto :goto_19
.end method

.method public zzde()V
    .registers 3

    sget-object v1, Lcom/google/android/gms/internal/zzbc;->zzaih:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbc;->zzaik:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbc;->zzaif:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbc;->zzaif:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbc;->zzaik:Z

    :cond_13
    monitor-exit v1

    return-void

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method
