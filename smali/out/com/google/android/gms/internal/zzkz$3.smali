.class final Lcom/google/android/gms/internal/zzkz$3;
.super Lcom/google/android/gms/internal/zzkz$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzkz;->zzf(Landroid/content/Context;Z)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzang:Landroid/content/Context;

.field final synthetic zzcuw:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkz$3;->zzang:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzkz$3;->zzcuw:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzkz$zza;-><init>(Lcom/google/android/gms/internal/zzkz$1;)V

    return-void
.end method


# virtual methods
.method public zzfp()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkz$3;->zzang:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkz;->zzm(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auto_collect_location"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzkz$3;->zzcuw:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
