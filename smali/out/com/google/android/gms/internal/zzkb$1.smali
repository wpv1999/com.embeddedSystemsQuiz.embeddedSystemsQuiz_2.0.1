.class Lcom/google/android/gms/internal/zzkb$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzkb;->zza(Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcrb:Lcom/google/android/gms/internal/zzkb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzkb;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkb$1;->zzcrb:Lcom/google/android/gms/internal/zzkb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkb$1;->zzcrb:Lcom/google/android/gms/internal/zzkb;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzkb;->zza(Lcom/google/android/gms/internal/zzkb;I)V

    return-void
.end method
