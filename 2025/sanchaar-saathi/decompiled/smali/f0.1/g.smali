.class public final Lf0/g;
.super Landroidx/datastore/preferences/protobuf/w;
.source "SourceFile"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/Q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf0/g$a;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lf0/g;

.field private static volatile PARSER:Landroidx/datastore/preferences/protobuf/Y; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/Y;"
        }
    .end annotation
.end field

.field public static final STRINGS_FIELD_NUMBER:I = 0x1


# instance fields
.field private strings_:Landroidx/datastore/preferences/protobuf/y$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/y$b;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lf0/g;

    invoke-direct {v0}, Lf0/g;-><init>()V

    sput-object v0, Lf0/g;->DEFAULT_INSTANCE:Lf0/g;

    const-class v1, Lf0/g;

    invoke-static {v1, v0}, Landroidx/datastore/preferences/protobuf/w;->L(Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/w;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/w;-><init>()V

    invoke-static {}, Landroidx/datastore/preferences/protobuf/w;->t()Landroidx/datastore/preferences/protobuf/y$b;

    move-result-object v0

    iput-object v0, p0, Lf0/g;->strings_:Landroidx/datastore/preferences/protobuf/y$b;

    return-void
.end method

.method public static synthetic O()Lf0/g;
    .locals 1

    sget-object v0, Lf0/g;->DEFAULT_INSTANCE:Lf0/g;

    return-object v0
.end method

.method public static synthetic P(Lf0/g;Ljava/lang/Iterable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lf0/g;->Q(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static S()Lf0/g;
    .locals 1

    sget-object v0, Lf0/g;->DEFAULT_INSTANCE:Lf0/g;

    return-object v0
.end method

.method public static U()Lf0/g$a;
    .locals 1

    sget-object v0, Lf0/g;->DEFAULT_INSTANCE:Lf0/g;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/w;->p()Landroidx/datastore/preferences/protobuf/w$a;

    move-result-object v0

    check-cast v0, Lf0/g$a;

    return-object v0
.end method


# virtual methods
.method public final Q(Ljava/lang/Iterable;)V
    .locals 1

    invoke-virtual {p0}, Lf0/g;->R()V

    iget-object v0, p0, Lf0/g;->strings_:Landroidx/datastore/preferences/protobuf/y$b;

    invoke-static {p1, v0}, Landroidx/datastore/preferences/protobuf/a;->c(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public final R()V
    .locals 2

    iget-object v0, p0, Lf0/g;->strings_:Landroidx/datastore/preferences/protobuf/y$b;

    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/y$b;->r()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/w;->F(Landroidx/datastore/preferences/protobuf/y$b;)Landroidx/datastore/preferences/protobuf/y$b;

    move-result-object v0

    iput-object v0, p0, Lf0/g;->strings_:Landroidx/datastore/preferences/protobuf/y$b;

    :cond_0
    return-void
.end method

.method public T()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lf0/g;->strings_:Landroidx/datastore/preferences/protobuf/y$b;

    return-object v0
.end method

.method public final s(Landroidx/datastore/preferences/protobuf/w$d;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p2, Lf0/e;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lf0/g;->PARSER:Landroidx/datastore/preferences/protobuf/Y;

    if-nez p1, :cond_1

    const-class p2, Lf0/g;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lf0/g;->PARSER:Landroidx/datastore/preferences/protobuf/Y;

    if-nez p1, :cond_0

    new-instance p1, Landroidx/datastore/preferences/protobuf/w$b;

    sget-object p3, Lf0/g;->DEFAULT_INSTANCE:Lf0/g;

    invoke-direct {p1, p3}, Landroidx/datastore/preferences/protobuf/w$b;-><init>(Landroidx/datastore/preferences/protobuf/w;)V

    sput-object p1, Lf0/g;->PARSER:Landroidx/datastore/preferences/protobuf/Y;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p2

    goto :goto_2

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_2
    return-object p1

    :pswitch_3
    sget-object p1, Lf0/g;->DEFAULT_INSTANCE:Lf0/g;

    return-object p1

    :pswitch_4
    const-string p1, "strings_"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a"

    sget-object p3, Lf0/g;->DEFAULT_INSTANCE:Lf0/g;

    invoke-static {p3, p2, p1}, Landroidx/datastore/preferences/protobuf/w;->H(Landroidx/datastore/preferences/protobuf/P;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lf0/g$a;

    invoke-direct {p1, p2}, Lf0/g$a;-><init>(Lf0/e;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lf0/g;

    invoke-direct {p1}, Lf0/g;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
