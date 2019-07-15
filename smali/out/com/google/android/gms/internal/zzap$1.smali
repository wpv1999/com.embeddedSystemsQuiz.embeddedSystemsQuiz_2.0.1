.class Lcom/google/android/gms/internal/zzap$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzap;->zza(Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzagi:Lcom/google/android/gms/internal/zzap;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzap;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzap$1;->zzagi:Lcom/google/android/gms/internal/zzap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzap$1;->zzagi:Lcom/google/android/gms/internal/zzap;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzap;->zzagg:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/zzap;->zzay()Landroid/os/ConditionVariable;

    move-result-object v1

    monitor-enter v1

    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzap$1;->zzagi:Lcom/google/android/gms/internal/zzap;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzap;->zzagg:Ljava/lang/Boolean;

    if-eqz v0, :cond_17

    monitor-exit v1

    goto :goto_6

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v0

    :cond_17
    :try_start_17
    sget-object v0, Lcom/google/android/gms/internal/zzdr;->zzbhl:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_39

    new-instance v2, Lcom/google/android/gms/clearcut/zza;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzap$1;->zzagi:Lcom/google/android/gms/internal/zzap;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzap;->zza(Lcom/google/android/gms/internal/zzap;)Lcom/google/android/gms/internal/zzbc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbc;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "ADSHIELD"

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/clearcut/zza;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/google/android/gms/internal/zzap;->zzagf:Lcom/google/android/gms/clearcut/zza;

    :cond_39
    iget-object v2, p0, Lcom/google/android/gms/internal/zzap$1;->zzagi:Lcom/google/android/gms/internal/zzap;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/zzap;->zzagg:Ljava/lang/Boolean;

    invoke-static {}, Lcom/google/android/gms/internal/zzap;->zzay()Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    monitor-exit v1
    :try_end_49
    .catchall {:try_start_17 .. :try_end_49} :catchall_14

    goto :goto_6
.end method
