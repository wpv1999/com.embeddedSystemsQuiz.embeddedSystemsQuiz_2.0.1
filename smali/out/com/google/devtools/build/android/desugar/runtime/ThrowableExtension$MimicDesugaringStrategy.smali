.class final Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$MimicDesugaringStrategy;
.super Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$AbstractDesugaringStrategy;
.source "ThrowableExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MimicDesugaringStrategy"
.end annotation


# static fields
.field static final SUPPRESSED_PREFIX:Ljava/lang/String; = "Suppressed: "


# instance fields
.field private final map:Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$AbstractDesugaringStrategy;-><init>()V

    .line 180
    new-instance v0, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap;

    invoke-direct {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$MimicDesugaringStrategy;->map:Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap;

    return-void
.end method


# virtual methods
.method public addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "receiver"    # Ljava/lang/Throwable;
    .param p2, "suppressed"    # Ljava/lang/Throwable;

    .prologue
    .line 188
    if-ne p2, p1, :cond_a

    .line 189
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Self suppression is not allowed."

    invoke-direct {v0, v1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 191
    :cond_a
    if-nez p2, :cond_14

    .line 192
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The suppressed exception cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_14
    iget-object v0, p0, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$MimicDesugaringStrategy;->map:Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap;->get(Ljava/lang/Throwable;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    return-void
.end method

.method public getSuppressed(Ljava/lang/Throwable;)[Ljava/lang/Throwable;
    .registers 5
    .param p1, "receiver"    # Ljava/lang/Throwable;

    .prologue
    .line 200
    iget-object v1, p0, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$MimicDesugaringStrategy;->map:Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap;->get(Ljava/lang/Throwable;Z)Ljava/util/List;

    move-result-object v0

    .line 201
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 202
    :cond_f
    sget-object v1, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$MimicDesugaringStrategy;->EMPTY_THROWABLE_ARRAY:[Ljava/lang/Throwable;

    .line 204
    :goto_11
    return-object v1

    :cond_12
    sget-object v1, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$MimicDesugaringStrategy;->EMPTY_THROWABLE_ARRAY:[Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Throwable;

    goto :goto_11
.end method

.method public printStackTrace(Ljava/lang/Throwable;)V
    .registers 7
    .param p1, "receiver"    # Ljava/lang/Throwable;

    .prologue
    .line 216
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 217
    iget-object v2, p0, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$MimicDesugaringStrategy;->map:Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap;->get(Ljava/lang/Throwable;Z)Ljava/util/List;

    move-result-object v1

    .line 218
    .local v1, "suppressedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    if-nez v1, :cond_d

    .line 227
    :goto_c
    return-void

    .line 221
    :cond_d
    monitor-enter v1

    .line 222
    :try_start_e
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 223
    .local v0, "suppressed":Ljava/lang/Throwable;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Suppressed: "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_12

    .line 226
    .end local v0    # "suppressed":Ljava/lang/Throwable;
    :catchall_29
    move-exception v2

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_e .. :try_end_2b} :catchall_29

    throw v2

    :cond_2c
    :try_start_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_29

    goto :goto_c
.end method

.method public printStackTrace(Ljava/lang/Throwable;Ljava/io/PrintStream;)V
    .registers 7
    .param p1, "receiver"    # Ljava/lang/Throwable;
    .param p2, "stream"    # Ljava/io/PrintStream;

    .prologue
    .line 231
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 232
    iget-object v2, p0, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$MimicDesugaringStrategy;->map:Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap;->get(Ljava/lang/Throwable;Z)Ljava/util/List;

    move-result-object v1

    .line 233
    .local v1, "suppressedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    if-nez v1, :cond_d

    .line 242
    :goto_c
    return-void

    .line 236
    :cond_d
    monitor-enter v1

    .line 237
    :try_start_e
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 238
    .local v0, "suppressed":Ljava/lang/Throwable;
    const-string v3, "Suppressed: "

    invoke-virtual {p2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v0, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_12

    .line 241
    .end local v0    # "suppressed":Ljava/lang/Throwable;
    :catchall_27
    move-exception v2

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_e .. :try_end_29} :catchall_27

    throw v2

    :cond_2a
    :try_start_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_27

    goto :goto_c
.end method

.method public printStackTrace(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "receiver"    # Ljava/lang/Throwable;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 246
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 247
    iget-object v2, p0, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$MimicDesugaringStrategy;->map:Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension$ConcurrentWeakIdentityHashMap;->get(Ljava/lang/Throwable;Z)Ljava/util/List;

    move-result-object v1

    .line 248
    .local v1, "suppressedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    if-nez v1, :cond_d

    .line 257
    :goto_c
    return-void

    .line 251
    :cond_d
    monitor-enter v1

    .line 252
    :try_start_e
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 253
    .local v0, "suppressed":Ljava/lang/Throwable;
    const-string v3, "Suppressed: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v0, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_12

    .line 256
    .end local v0    # "suppressed":Ljava/lang/Throwable;
    :catchall_27
    move-exception v2

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_e .. :try_end_29} :catchall_27

    throw v2

    :cond_2a
    :try_start_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_27

    goto :goto_c
.end method
