.class public Lcom/google/android/gms/internal/zzdy;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private final zzalt:Lcom/google/android/gms/internal/zzdz;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zzblw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzdx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzdz;)V
    .registers 3
    .param p1    # Lcom/google/android/gms/internal/zzdz;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdy;->zzalt:Lcom/google/android/gms/internal/zzdz;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdy;->zzblw:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdx;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdy;->zzblw:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public zza(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 10

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdy;->zzalt:Lcom/google/android/gms/internal/zzdz;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdy;->zzblw:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdx;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v0, p3, p4, v2}, Lcom/google/android/gms/internal/zzdv;->zza(Lcom/google/android/gms/internal/zzdz;Lcom/google/android/gms/internal/zzdx;J[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdy;->zzblw:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdy;->zzalt:Lcom/google/android/gms/internal/zzdz;

    invoke-static {v1, p3, p4}, Lcom/google/android/gms/internal/zzdv;->zza(Lcom/google/android/gms/internal/zzdz;J)Lcom/google/android/gms/internal/zzdx;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public zzly()Lcom/google/android/gms/internal/zzdz;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdy;->zzalt:Lcom/google/android/gms/internal/zzdz;

    return-object v0
.end method
