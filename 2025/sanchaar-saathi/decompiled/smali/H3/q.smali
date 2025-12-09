.class public final LH3/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG3/e;


# instance fields
.field public final e:LF3/t;


# direct methods
.method public constructor <init>(LF3/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LH3/q;->e:LF3/t;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Ll3/e;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LH3/q;->e:LF3/t;

    invoke-interface {v0, p1, p2}, LF3/t;->n(Ljava/lang/Object;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1
.end method
