.class final Lcom/google/android/gms/internal/zzsi$2;
.super Lcom/google/android/gms/internal/zzsi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzsi;->zza(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/internal/zzsi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzsi",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Long;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzsi;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected synthetic zzhi(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzsi$2;->zzhk(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected zzhk(Ljava/lang/String;)Ljava/lang/Long;
    .registers 5

    invoke-static {}, Lcom/google/android/gms/internal/zzsi;->zzauh()Lcom/google/android/gms/internal/zzsi$zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$2;->zzbcn:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$2;->zzbco:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/zzsi$zza;->getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
