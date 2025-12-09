.class public Li0/I$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li0/I$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li0/I;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "m"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I

.field public final synthetic d:Li0/I;


# direct methods
.method public constructor <init>(Li0/I;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Li0/I$m;->d:Li0/I;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Li0/I$m;->a:Ljava/lang/String;

    iput p3, p0, Li0/I$m;->b:I

    iput p4, p0, Li0/I$m;->c:I

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 6

    iget-object v0, p0, Li0/I$m;->d:Li0/I;

    iget-object v0, v0, Li0/I;->A:Li0/p;

    if-eqz v0, :cond_0

    iget v1, p0, Li0/I$m;->b:I

    if-gez v1, :cond_0

    iget-object v1, p0, Li0/I$m;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Li0/p;->s()Li0/I;

    move-result-object v0

    invoke-virtual {v0}, Li0/I;->b1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Li0/I$m;->d:Li0/I;

    iget-object v3, p0, Li0/I$m;->a:Ljava/lang/String;

    iget v4, p0, Li0/I$m;->b:I

    iget v5, p0, Li0/I$m;->c:I

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Li0/I;->e1(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method
