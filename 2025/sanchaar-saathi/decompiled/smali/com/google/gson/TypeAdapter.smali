.class public abstract Lcom/google/gson/TypeAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/gson/h;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    new-instance v0, Lcom/google/gson/internal/bind/a;

    invoke-direct {v0, p1}, Lcom/google/gson/internal/bind/a;-><init>(Lcom/google/gson/h;)V

    invoke-virtual {p0, v0}, Lcom/google/gson/TypeAdapter;->c(LD2/a;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/gson/i;

    invoke-direct {v0, p1}, Lcom/google/gson/i;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final b()Lcom/google/gson/TypeAdapter;
    .locals 1

    new-instance v0, Lcom/google/gson/TypeAdapter$1;

    invoke-direct {v0, p0}, Lcom/google/gson/TypeAdapter$1;-><init>(Lcom/google/gson/TypeAdapter;)V

    return-object v0
.end method

.method public abstract c(LD2/a;)Ljava/lang/Object;
.end method

.method public final d(Ljava/lang/Object;)Lcom/google/gson/h;
    .locals 1

    :try_start_0
    new-instance v0, Lcom/google/gson/internal/bind/b;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/b;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/google/gson/TypeAdapter;->e(LD2/c;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/gson/internal/bind/b;->N()Lcom/google/gson/h;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/gson/i;

    invoke-direct {v0, p1}, Lcom/google/gson/i;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public abstract e(LD2/c;Ljava/lang/Object;)V
.end method
