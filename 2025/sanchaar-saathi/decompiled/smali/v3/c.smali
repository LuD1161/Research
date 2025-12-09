.class public abstract Lv3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA3/a;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv3/c$a;
    }
.end annotation


# static fields
.field public static final k:Ljava/lang/Object;


# instance fields
.field public transient e:LA3/a;

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Class;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lv3/c$a;->a()Lv3/c$a;

    move-result-object v0

    sput-object v0, Lv3/c;->k:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv3/c;->f:Ljava/lang/Object;

    iput-object p2, p0, Lv3/c;->g:Ljava/lang/Class;

    iput-object p3, p0, Lv3/c;->h:Ljava/lang/String;

    iput-object p4, p0, Lv3/c;->i:Ljava/lang/String;

    iput-boolean p5, p0, Lv3/c;->j:Z

    return-void
.end method


# virtual methods
.method public a()LA3/a;
    .locals 1

    iget-object v0, p0, Lv3/c;->e:LA3/a;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lv3/c;->b()LA3/a;

    move-result-object v0

    iput-object v0, p0, Lv3/c;->e:LA3/a;

    :cond_0
    return-object v0
.end method

.method public abstract b()LA3/a;
.end method

.method public e()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lv3/c;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lv3/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method public l()LA3/d;
    .locals 2

    iget-object v0, p0, Lv3/c;->g:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lv3/c;->j:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Lv3/x;->c(Ljava/lang/Class;)LA3/d;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lv3/x;->b(Ljava/lang/Class;)LA3/b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public m()LA3/a;
    .locals 1

    invoke-virtual {p0}, Lv3/c;->a()LA3/a;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lt3/b;

    invoke-direct {v0}, Lt3/b;-><init>()V

    throw v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lv3/c;->i:Ljava/lang/String;

    return-object v0
.end method
