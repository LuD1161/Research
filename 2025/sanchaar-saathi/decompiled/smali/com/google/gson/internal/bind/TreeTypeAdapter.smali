.class public final Lcom/google/gson/internal/bind/TreeTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/bind/TreeTypeAdapter$b;,
        Lcom/google/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gson/TypeAdapter;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/gson/g;

.field public final b:Lcom/google/gson/Gson;

.field public final c:LC2/a;

.field public final d:Lcom/google/gson/s;

.field public final e:Lcom/google/gson/internal/bind/TreeTypeAdapter$b;

.field public f:Lcom/google/gson/TypeAdapter;


# direct methods
.method public constructor <init>(Lcom/google/gson/n;Lcom/google/gson/g;Lcom/google/gson/Gson;LC2/a;Lcom/google/gson/s;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    new-instance p1, Lcom/google/gson/internal/bind/TreeTypeAdapter$b;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/google/gson/internal/bind/TreeTypeAdapter$b;-><init>(Lcom/google/gson/internal/bind/TreeTypeAdapter;Lcom/google/gson/internal/bind/TreeTypeAdapter$a;)V

    iput-object p1, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->e:Lcom/google/gson/internal/bind/TreeTypeAdapter$b;

    iput-object p2, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->a:Lcom/google/gson/g;

    iput-object p3, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->b:Lcom/google/gson/Gson;

    iput-object p4, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->c:LC2/a;

    iput-object p5, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->d:Lcom/google/gson/s;

    return-void
.end method

.method private f()Lcom/google/gson/TypeAdapter;
    .locals 3

    iget-object v0, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->f:Lcom/google/gson/TypeAdapter;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->b:Lcom/google/gson/Gson;

    iget-object v1, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->d:Lcom/google/gson/s;

    iget-object v2, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->c:LC2/a;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->l(Lcom/google/gson/s;LC2/a;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->f:Lcom/google/gson/TypeAdapter;

    :goto_0
    return-object v0
.end method

.method public static g(LC2/a;Ljava/lang/Object;)Lcom/google/gson/s;
    .locals 3

    invoke-virtual {p0}, LC2/a;->e()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0}, LC2/a;->c()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/google/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v0, v2}, Lcom/google/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;LC2/a;ZLjava/lang/Class;)V

    return-object v1
.end method


# virtual methods
.method public c(LD2/a;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->a:Lcom/google/gson/g;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/gson/internal/bind/TreeTypeAdapter;->f()Lcom/google/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->c(LD2/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/google/gson/internal/k;->a(LD2/a;)Lcom/google/gson/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/h;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->a:Lcom/google/gson/g;

    iget-object v1, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->c:LC2/a;

    invoke-virtual {v1}, LC2/a;->e()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->e:Lcom/google/gson/internal/bind/TreeTypeAdapter$b;

    invoke-interface {v0, p1, v1, v2}, Lcom/google/gson/g;->a(Lcom/google/gson/h;Ljava/lang/reflect/Type;Lcom/google/gson/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e(LD2/c;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/gson/internal/bind/TreeTypeAdapter;->f()Lcom/google/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/TypeAdapter;->e(LD2/c;Ljava/lang/Object;)V

    return-void
.end method
