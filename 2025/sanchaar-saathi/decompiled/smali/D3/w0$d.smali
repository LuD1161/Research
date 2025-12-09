.class public final LD3/w0$d;
.super LI3/q$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LD3/w0;->N(Ljava/lang/Object;LD3/A0;LD3/v0;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic d:LD3/w0;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LI3/q;LD3/w0;Ljava/lang/Object;)V
    .locals 0

    iput-object p2, p0, LD3/w0$d;->d:LD3/w0;

    iput-object p3, p0, LD3/w0$d;->e:Ljava/lang/Object;

    invoke-direct {p0, p1}, LI3/q$a;-><init>(LI3/q;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LI3/q;

    invoke-virtual {p0, p1}, LD3/w0$d;->f(LI3/q;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f(LI3/q;)Ljava/lang/Object;
    .locals 1

    iget-object p1, p0, LD3/w0$d;->d:LD3/w0;

    invoke-virtual {p1}, LD3/w0;->k0()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, LD3/w0$d;->e:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, LI3/p;->a()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method
