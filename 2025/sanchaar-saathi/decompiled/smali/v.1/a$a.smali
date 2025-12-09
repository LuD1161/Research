.class public Lv/a$a;
.super Lv/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv/a;->n()Lv/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lv/a;


# direct methods
.method public constructor <init>(Lv/a;)V
    .locals 0

    iput-object p1, p0, Lv/a$a;->d:Lv/a;

    invoke-direct {p0}, Lv/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lv/a$a;->d:Lv/a;

    invoke-virtual {v0}, Lv/g;->clear()V

    return-void
.end method

.method public b(II)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lv/a$a;->d:Lv/a;

    iget-object v0, v0, Lv/g;->f:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr p1, p2

    aget-object p1, v0, p1

    return-object p1
.end method

.method public c()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lv/a$a;->d:Lv/a;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lv/a$a;->d:Lv/a;

    iget v0, v0, Lv/g;->g:I

    return v0
.end method

.method public e(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lv/a$a;->d:Lv/a;

    invoke-virtual {v0, p1}, Lv/g;->f(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public f(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lv/a$a;->d:Lv/a;

    invoke-virtual {v0, p1}, Lv/g;->h(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public g(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lv/a$a;->d:Lv/a;

    invoke-virtual {v0, p1, p2}, Lv/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public h(I)V
    .locals 1

    iget-object v0, p0, Lv/a$a;->d:Lv/a;

    invoke-virtual {v0, p1}, Lv/g;->k(I)Ljava/lang/Object;

    return-void
.end method

.method public i(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lv/a$a;->d:Lv/a;

    invoke-virtual {v0, p1, p2}, Lv/g;->l(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
