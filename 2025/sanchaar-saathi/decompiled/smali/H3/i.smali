.class public final LH3/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll3/i;


# instance fields
.field public final e:Ljava/lang/Throwable;

.field public final synthetic f:Ll3/i;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Ll3/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LH3/i;->e:Ljava/lang/Throwable;

    iput-object p2, p0, LH3/i;->f:Ll3/i;

    return-void
.end method


# virtual methods
.method public B(Ll3/i$c;)Ll3/i;
    .locals 1

    iget-object v0, p0, LH3/i;->f:Ll3/i;

    invoke-interface {v0, p1}, Ll3/i;->B(Ll3/i$c;)Ll3/i;

    move-result-object p1

    return-object p1
.end method

.method public H(Ljava/lang/Object;Lu3/p;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LH3/i;->f:Ll3/i;

    invoke-interface {v0, p1, p2}, Ll3/i;->H(Ljava/lang/Object;Lu3/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Ll3/i$c;)Ll3/i$b;
    .locals 1

    iget-object v0, p0, LH3/i;->f:Ll3/i;

    invoke-interface {v0, p1}, Ll3/i;->d(Ll3/i$c;)Ll3/i$b;

    move-result-object p1

    return-object p1
.end method

.method public h(Ll3/i;)Ll3/i;
    .locals 1

    iget-object v0, p0, LH3/i;->f:Ll3/i;

    invoke-interface {v0, p1}, Ll3/i;->h(Ll3/i;)Ll3/i;

    move-result-object p1

    return-object p1
.end method
