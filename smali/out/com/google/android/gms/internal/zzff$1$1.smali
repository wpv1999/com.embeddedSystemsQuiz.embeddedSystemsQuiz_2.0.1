.class Lcom/google/android/gms/internal/zzff$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzff$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbqg:Lorg/json/JSONObject;

.field final synthetic zzbqh:Lcom/google/android/gms/internal/zzff$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzff$1;Lorg/json/JSONObject;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzff$1$1;->zzbqh:Lcom/google/android/gms/internal/zzff$1;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzff$1$1;->zzbqg:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff$1$1;->zzbqh:Lcom/google/android/gms/internal/zzff$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzff$1;->zzbqe:Lcom/google/android/gms/internal/zzmd;

    const-string v1, "fetchHttpRequestCompleted"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzff$1$1;->zzbqg:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzmd;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string v0, "Dispatched http response."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdg(Ljava/lang/String;)V

    return-void
.end method
