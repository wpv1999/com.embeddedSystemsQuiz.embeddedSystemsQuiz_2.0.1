.class public Lcom/google/android/gms/internal/zzbs;
.super Lcom/google/android/gms/internal/zzby;


# instance fields
.field private final zzajf:[Ljava/lang/StackTraceElement;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbc;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzaf$zza;II[Ljava/lang/StackTraceElement;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/internal/zzby;-><init>(Lcom/google/android/gms/internal/zzbc;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzaf$zza;II)V

    iput-object p7, p0, Lcom/google/android/gms/internal/zzbs;->zzajf:[Ljava/lang/StackTraceElement;

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

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbs;->zzajf:[Ljava/lang/StackTraceElement;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbs;->zzajk:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbs;->zzajf:[Ljava/lang/StackTraceElement;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/internal/zzba;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/zzba;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbs;->zzajb:Lcom/google/android/gms/internal/zzaf$zza;

    monitor-enter v4

    :try_start_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbs;->zzajb:Lcom/google/android/gms/internal/zzaf$zza;

    iget-object v5, v3, Lcom/google/android/gms/internal/zzba;->zzahn:Ljava/lang/Long;

    iput-object v5, v0, Lcom/google/android/gms/internal/zzaf$zza;->zzej:Ljava/lang/Long;

    iget-object v0, v3, Lcom/google/android/gms/internal/zzba;->zzaho:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbs;->zzajb:Lcom/google/android/gms/internal/zzaf$zza;

    iget-object v0, v3, Lcom/google/android/gms/internal/zzba;->zzahp:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3e

    move v0, v1

    :goto_36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v5, Lcom/google/android/gms/internal/zzaf$zza;->zzer:Ljava/lang/Integer;

    :cond_3c
    monitor-exit v4

    :cond_3d
    return-void

    :cond_3e
    move v0, v2

    goto :goto_36

    :catchall_40
    move-exception v0

    monitor-exit v4
    :try_end_42
    .catchall {:try_start_1d .. :try_end_42} :catchall_40

    throw v0
.end method
