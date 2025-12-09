.class public final Le3/I$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG3/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le3/I;->w(Ll3/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic e:LG3/d;


# direct methods
.method public constructor <init>(LG3/d;)V
    .locals 0

    iput-object p1, p0, Le3/I$k;->e:LG3/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(LG3/e;Ll3/e;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Le3/I$k;->e:LG3/d;

    new-instance v1, Le3/I$k$a;

    invoke-direct {v1, p1}, Le3/I$k$a;-><init>(LG3/e;)V

    invoke-interface {v0, v1, p2}, LG3/d;->c(LG3/e;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1
.end method
