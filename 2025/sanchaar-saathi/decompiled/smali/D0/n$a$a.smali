.class public LD0/n$a$a;
.super LD0/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LD0/n$a;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lv/a;

.field public final synthetic b:LD0/n$a;


# direct methods
.method public constructor <init>(LD0/n$a;Lv/a;)V
    .locals 0

    iput-object p1, p0, LD0/n$a$a;->b:LD0/n$a;

    iput-object p2, p0, LD0/n$a$a;->a:Lv/a;

    invoke-direct {p0}, LD0/m;-><init>()V

    return-void
.end method


# virtual methods
.method public d(LD0/l;)V
    .locals 2

    iget-object v0, p0, LD0/n$a$a;->a:Lv/a;

    iget-object v1, p0, LD0/n$a$a;->b:LD0/n$a;

    iget-object v1, v1, LD0/n$a;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lv/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, LD0/l;->U(LD0/l$f;)LD0/l;

    return-void
.end method
