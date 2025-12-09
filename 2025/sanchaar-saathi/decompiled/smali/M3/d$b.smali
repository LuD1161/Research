.class public final LM3/d$b;
.super Lv3/m;
.source "SourceFile"

# interfaces
.implements Lu3/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LM3/d;-><init>(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic f:LM3/d;


# direct methods
.method public constructor <init>(LM3/d;)V
    .locals 0

    iput-object p1, p0, LM3/d$b;->f:LM3/d;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lv3/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p1, p0, LM3/d$b;->f:LM3/d;

    invoke-virtual {p1}, LM3/d;->i()V

    return-void
.end method

.method public bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, LM3/d$b;->a(Ljava/lang/Throwable;)V

    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1
.end method
