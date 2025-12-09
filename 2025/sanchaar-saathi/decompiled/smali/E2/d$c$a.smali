.class public LE2/d$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LE2/d$c;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:LE2/d$c;


# direct methods
.method public constructor <init>(LE2/d$c;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, LE2/d$c$a;->f:LE2/d$c;

    iput-object p2, p0, LE2/d$c$a;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LE2/d$c$a;->f:LE2/d$c;

    invoke-static {v0}, LE2/d$c;->d(LE2/d$c;)LY2/j$d;

    move-result-object v0

    iget-object v1, p0, LE2/d$c$a;->e:Ljava/lang/Object;

    invoke-interface {v0, v1}, LY2/j$d;->a(Ljava/lang/Object;)V

    return-void
.end method
