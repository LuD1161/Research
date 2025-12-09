.class public LD0/e$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD0/l$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LD0/e;->w(Li0/p;Ljava/lang/Object;LO/a;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;

.field public final synthetic b:LD0/e;


# direct methods
.method public constructor <init>(LD0/e;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, LD0/e$e;->b:LD0/e;

    iput-object p2, p0, LD0/e$e;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LD0/l;)V
    .locals 0

    return-void
.end method

.method public b(LD0/l;)V
    .locals 0

    return-void
.end method

.method public c(LD0/l;)V
    .locals 0

    return-void
.end method

.method public d(LD0/l;)V
    .locals 0

    iget-object p1, p0, LD0/e$e;->a:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public e(LD0/l;)V
    .locals 0

    return-void
.end method
