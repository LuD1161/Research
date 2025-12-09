.class public final synthetic LH2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu3/l;


# instance fields
.field public final synthetic e:LH2/l;

.field public final synthetic f:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(LH2/l;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LH2/c;->e:LH2/l;

    iput-object p2, p0, LH2/c;->f:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, LH2/c;->e:LH2/l;

    iget-object v1, p0, LH2/c;->f:Landroid/app/Activity;

    check-cast p1, Lp2/a;

    invoke-static {v0, v1, p1}, LH2/l;->f(LH2/l;Landroid/app/Activity;Lp2/a;)Lh3/n;

    move-result-object p1

    return-object p1
.end method
