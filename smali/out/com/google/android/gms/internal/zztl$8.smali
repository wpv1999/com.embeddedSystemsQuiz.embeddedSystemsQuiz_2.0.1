.class final Lcom/google/android/gms/internal/zztl$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zztl$zzb$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zztl;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zztl$zzb;Ljava/lang/String;Lcom/google/android/gms/internal/zztl$zzb$zza;)Lcom/google/android/gms/internal/zztl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qs:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/zztl$8;->Qs:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/gms/internal/zztl;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zztl$zza;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zztl$zza;

    const-string v1, "local only VersionPolicy should not load from remote"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zztl$zza;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zztl$1;)V

    throw v0
.end method

.method public zzaa(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/zztl$8;->Qs:I

    return v0
.end method

.method public zzb(Landroid/content/Context;Ljava/lang/String;Z)I
    .registers 5

    const/4 v0, 0x0

    return v0
.end method
