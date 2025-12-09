.class public final Lc0/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll3/i$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc0/A$a;
    }
.end annotation


# static fields
.field public static final g:Lc0/A$a;

.field public static final h:Ljava/lang/String;


# instance fields
.field public final e:Lc0/A;

.field public final f:Lc0/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc0/A$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc0/A$a;-><init>(Lv3/g;)V

    sput-object v0, Lc0/A;->g:Lc0/A$a;

    const-string v0, "Calling updateData inside updateData on the same DataStore instance is not supported\nsince updates made in the parent updateData call will not be visible to the nested\nupdateData call. See https://issuetracker.google.com/issues/241760537 for details."

    sput-object v0, Lc0/A;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lc0/A;Lc0/j;)V
    .locals 1

    const-string v0, "instance"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc0/A;->e:Lc0/A;

    iput-object p2, p0, Lc0/A;->f:Lc0/j;

    return-void
.end method


# virtual methods
.method public B(Ll3/i$c;)Ll3/i;
    .locals 0

    invoke-static {p0, p1}, Ll3/i$b$a;->c(Ll3/i$b;Ll3/i$c;)Ll3/i;

    move-result-object p1

    return-object p1
.end method

.method public H(Ljava/lang/Object;Lu3/p;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Ll3/i$b$a;->a(Ll3/i$b;Ljava/lang/Object;Lu3/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lc0/h;)V
    .locals 1

    const-string v0, "candidate"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lc0/A;->f:Lc0/j;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lc0/A;->e:Lc0/A;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lc0/A;->a(Lc0/h;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    sget-object v0, Lc0/A;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Ll3/i$c;)Ll3/i$b;
    .locals 0

    invoke-static {p0, p1}, Ll3/i$b$a;->b(Ll3/i$b;Ll3/i$c;)Ll3/i$b;

    move-result-object p1

    return-object p1
.end method

.method public getKey()Ll3/i$c;
    .locals 1

    sget-object v0, Lc0/A$a$a;->e:Lc0/A$a$a;

    return-object v0
.end method

.method public h(Ll3/i;)Ll3/i;
    .locals 0

    invoke-static {p0, p1}, Ll3/i$b$a;->d(Ll3/i$b;Ll3/i;)Ll3/i;

    move-result-object p1

    return-object p1
.end method
