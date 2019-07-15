.class public Lcom/google/android/gms/internal/zzbh;
.super Lcom/google/android/gms/internal/zzby;


# static fields
.field private static volatile zzaiw:Ljava/lang/String;

.field private static final zzaix:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzbh;->zzaiw:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbh;->zzaix:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzbc;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzaf$zza;II)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/internal/zzby;-><init>(Lcom/google/android/gms/internal/zzbc;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzaf$zza;II)V

    return-void
.end method


# virtual methods
.method protected zzdh()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbh;->zzajb:Lcom/google/android/gms/internal/zzaf$zza;

    const-string v1, "E"

    iput-object v1, v0, Lcom/google/android/gms/internal/zzaf$zza;->zzdw:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzbh;->zzaiw:Ljava/lang/String;

    if-nez v0, :cond_29

    sget-object v1, Lcom/google/android/gms/internal/zzbh;->zzaix:Ljava/lang/Object;

    monitor-enter v1

    :try_start_d
    sget-object v0, Lcom/google/android/gms/internal/zzbh;->zzaiw:Ljava/lang/String;

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbh;->zzajk:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbh;->zzagd:Lcom/google/android/gms/internal/zzbc;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzbc;->getContext()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/zzbh;->zzaiw:Ljava/lang/String;

    :cond_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_d .. :try_end_29} :catchall_3d

    :cond_29
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbh;->zzajb:Lcom/google/android/gms/internal/zzaf$zza;

    monitor-enter v1

    :try_start_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbh;->zzajb:Lcom/google/android/gms/internal/zzaf$zza;

    sget-object v2, Lcom/google/android/gms/internal/zzbh;->zzaiw:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzal;->zza([BZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/zzaf$zza;->zzdw:Ljava/lang/String;

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_2c .. :try_end_3c} :catchall_40

    return-void

    :catchall_3d
    move-exception v0

    :try_start_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v0

    :catchall_40
    move-exception v0

    :try_start_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v0
.end method
