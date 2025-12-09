.class public final LG/s$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LG/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/Set;

.field public final c:Landroid/os/Bundle;

.field public d:Ljava/lang/CharSequence;

.field public e:[Ljava/lang/CharSequence;

.field public f:Z

.field public g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LG/s$d;->b:Ljava/util/Set;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, LG/s$d;->c:Landroid/os/Bundle;

    const/4 v0, 0x1

    iput-boolean v0, p0, LG/s$d;->f:Z

    const/4 v0, 0x0

    iput v0, p0, LG/s$d;->g:I

    if-eqz p1, :cond_0

    iput-object p1, p0, LG/s$d;->a:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Result key can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()LG/s;
    .locals 9

    new-instance v8, LG/s;

    iget-object v1, p0, LG/s$d;->a:Ljava/lang/String;

    iget-object v2, p0, LG/s$d;->d:Ljava/lang/CharSequence;

    iget-object v3, p0, LG/s$d;->e:[Ljava/lang/CharSequence;

    iget-boolean v4, p0, LG/s$d;->f:Z

    iget v5, p0, LG/s$d;->g:I

    iget-object v6, p0, LG/s$d;->c:Landroid/os/Bundle;

    iget-object v7, p0, LG/s$d;->b:Ljava/util/Set;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, LG/s;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZILandroid/os/Bundle;Ljava/util/Set;)V

    return-object v8
.end method

.method public b(Ljava/lang/String;Z)LG/s$d;
    .locals 0

    if-eqz p2, :cond_0

    iget-object p2, p0, LG/s$d;->b:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, LG/s$d;->b:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-object p0
.end method

.method public c(Z)LG/s$d;
    .locals 0

    iput-boolean p1, p0, LG/s$d;->f:Z

    return-object p0
.end method

.method public d([Ljava/lang/CharSequence;)LG/s$d;
    .locals 0

    iput-object p1, p0, LG/s$d;->e:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method public e(Ljava/lang/CharSequence;)LG/s$d;
    .locals 0

    iput-object p1, p0, LG/s$d;->d:Ljava/lang/CharSequence;

    return-object p0
.end method
